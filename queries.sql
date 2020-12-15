-- Вывести название вакансии, город, в котором опубликована 
-- вакансия (можно просто area_id), имя работодателя для первых 
-- 10 вакансий у которых не указана зарплата, 
-- сортировать по дате создания вакансии от новых к более старым.

SELECT
    v.position_name,
    a.area_name,
    e.employer_name
FROM
    vacancy AS v
    LEFT JOIN employer AS e ON v.employer_id = e.employer_id
    LEFT JOIN area AS a ON v.area_id = a.area_id
WHERE
    v.compensation_from IS NULL
    AND v.compensation_to IS NULL
ORDER BY
    v.creation_time DESC
LIMIT 10;

-- Вывести среднюю максимальную зарплату в вакансиях, среднюю минимальную 
-- и среднюю среднюю (compensation_to - compensation_from) в одном запросе. 
-- Значения должны быть указаны до вычета налогов.

WITH vacancy_compensation_gross AS (
    SELECT
        position_name,
        CASE WHEN compensation_gross IS TRUE THEN
            compensation_to
        ELSE
            compensation_to / 87 * 100
        END AS compensation_to_gross,
        CASE WHEN compensation_gross IS TRUE THEN
            compensation_from
        ELSE
            compensation_from / 87 * 100
        END AS compensation_from_gross
    FROM
        vacancy
)
SELECT
    position_name,
    round(avg(compensation_to_gross), 0) AS avg_compensation_to_gross,
    round(avg(compensation_from_gross), 0) AS avg_compensation_from_gross,
    CASE WHEN avg(compensation_to_gross - compensation_from_gross) = 0 THEN
        round(avg(compensation_from_gross), 0)
    ELSE
        round(avg(compensation_to_gross - compensation_from_gross), 0)
    END AS avg_componsation_middle_gross
FROM
    vacancy_compensation_gross
GROUP BY
    position_name;

-- Вывести топ-5 компаний, получивших максимальное количество откликов на одну вакансию, 
-- в порядке убывания откликов. Если более 5 компаний получили одинаковое максимальное 
-- количество откликов, отсортировать по алфавиту и вывести только 5.

--  В этом задании получилось только вывести топ 5 компаний, по количеству откликов.


WITH application_per_vacancy_for_company AS (
    SELECT
        e.employer_name,
        count(a.resume_id) AS num_responce
    FROM
        employer AS e
        JOIN vacancy AS v ON v.employer_id = e.employer_id
        JOIN application AS a ON a.vacancy_id = v.vacancy_id
    GROUP BY
        e.employer_name,
        v.vacancy_id
)
SELECT
    employer_name,
    max(num_responce) AS max_num_responce
FROM
    application_per_vacancy_for_company
GROUP BY
    employer_name
ORDER BY
    max_num_responce DESC
LIMIT 5;

-- Вывести медианное количество вакансий на компанию. Использовать percentile_cont.

WITH vacancy_per_company AS (
    SELECT
        count(v.vacancy_id) AS num_of_vacancies,
        e.employer_name
    FROM
        employer AS e
        JOIN vacancy AS v ON e.employer_id = v.employer_id
    GROUP BY
        e.employer_name
)
SELECT
    percentile_cont(0.5) WITHIN GROUP (ORDER BY vacancy_per_company.num_of_vacancies)
FROM
    vacancy_per_company;

-- Вывести минимальное и максимальное время от создания вакансии до первого отклика 
-- для каждого города.

WITH first_response_time_for_vacancy AS (
    SELECT
        vacancy_id,
        min(responce_time) AS min_responce_time
    FROM
        application
    GROUP BY
        vacancy_id
),
first_response_time_for_all_vacancy_in_area AS (
    SELECT
        a.area_name,
        v.vacancy_id,
        v.creation_time,
        f.min_responce_time
    FROM
        vacancy AS v
        JOIN area AS a ON v.area_id = a.area_id
        JOIN first_response_time_for_vacancy AS f ON v.vacancy_id = f.vacancy_id
)
SELECT
    area_name,
    max(min_responce_time - creation_time) AS max_first_responce,
    min(min_responce_time - creation_time) AS min_first_responce
FROM
    first_response_time_for_all_vacancy_in_area
GROUP BY
    area_name;

