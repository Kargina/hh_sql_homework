INSERT INTO employer 
(employer_id, employer_name)
VALUES 
(1, 'Shcool'), 
(2, 'IT'), 
(3, 'Kindergarten'), 
(4, 'Shop'), 
(5, 'Library'), 
(6, 'Police'), 
(7, 'Ambulance'), 
(8, 'Flower shop');

INSERT INTO area
(area_id, area_name)
VALUES 
(1, 'Moscow'), 
(2, 'St. Petersburg'), 
(3, 'Novosibirsk'), 
(4, 'Yekateerinburg'), 
(5, 'Nizhny Novgorod'), 
(6, 'Kazan'), 
(7, 'Omsk');

INSERT INTO vacancy 
(vacancy_id, employer_id, position_name, compensation_from, compensation_to, compensation_gross, vacancy_description, creation_time, area_id)
VALUES 
(1, 1, 'Teacher, math', 40000, 60000, FALSE, 'Need best teacher', '2020-11-22 19:10:25', 1), 
(2, 1, 'Teacher, history', 45000, NULL, TRUE, 'Need best teacher', '2020-11-22 19:15:25', 1), 
(3, 1, 'Teacher, english', NULL, 50000, FALSE, 'Need best teacher', '2020-11-25 14:11:25', 2), 
(4, 2, 'QA', 50000, 100000, TRUE, 'Need best QA', '2020-11-12 19:10:25', 3), 
(5, 3, 'Teacher, english', 20000, 30000, TRUE, 'Need best teacher for children', '2020-11-22 19:10:25', 1), 
(6, 3, 'Director', NULL, NULL, FALSE, 'Need best director', '2020-10-22 19:10:25', 1), 
(7, 4, 'Seller', 50000, 50000, TRUE, 'Need best seller', '2020-11-28 19:10:25', 4), 
(8, 4, 'Seller, holidays', 20000, 20000, FALSE, 'Need best seller', '2020-11-28 19:10:25', 4), 
(9, 5, 'Librarian', 30000, NULL, FALSE, 'Need best librarian', '2020-11-23 19:10:25', 6), 
(10, 5, 'Librarian', 30000, NULL, FALSE, 'Need best librarian', '2020-11-23 19:10:25', 7), 
(11, 5, 'Librarian', 35000, NULL, FALSE, 'Need best librarian', '2020-11-23 19:10:25', 1), 
(12, 6, 'Policeman', NULL, NULL, FALSE, 'Need best policeman', '2020-11-02 19:10:25', 1), 
(13, 6, 'Policeman', NULL, NULL, FALSE, 'Need best policeman', '2020-11-12 15:14:25', 2), 
(14, 6, 'Policeman', NULL, NULL, FALSE, 'Need best policeman', '2020-11-13 11:19:25', 3), 
(15, 6, 'Policeman', NULL, NULL, FALSE, 'Need best policeman', '2020-11-14 19:10:25', 7), 
(16, 6, 'Policeman', NULL, NULL, TRUE, 'Need best policeman', '2020-11-15 19:10:25', 6), 
(17, 7, 'Driver', 40000, NULL, FALSE, 'Need best driver', '2020-11-29 10:10:25', 1);

INSERT INTO applicant 
(applicant_id, birth_date, last_name, first_name, middle_name, email, phone_number)
VALUES 
(1, '1992-05-26', NULL, 'Анна', NULL, 'aaa@mail.ru', '89111111111'), 
(2, '1989-07-03', 'Громов', 'Иван', 'Гаврилович', 'bbb@mail.ru', '89111111112'), 
(3, NULL, 'Мамонтов', 'Иннокентий', NULL, 'bbb@mail.ru', '89111111113'), 
(4, '1988-06-12', 'Меркушева', 'Алина', NULL, 'ссс@mail.ru', NULL), 
(5, '1969-06-24', NULL, 'Иван', 'Тарасович', 'ddd@mail.ru', '89111111115'), 
(6, '1982-09-07', 'Горшкова', 'Дарья', 'Михайловна', 'eee@mail.ru', '89111111116'), 
(7, '1965-02-12', 'Зуев', 'Константин', 'Адрианович', NULL, '89111111117'), 
(8, '1976-12-16', 'Петрова', 'Эмилия', 'Аркадьевна', 'ggg@mail.ru', '89111111118'), 
(9, '1977-08-09', 'Трофимов', 'Александр', 'Игнатович', 'hhh@mail.ru', '89111111119'), 
(10, '1974-11-01', 'Анисимов', 'Илья', 'Витальевич', 'iii@mail.ru', '89111111121'), 
(11, '1999-01-04', 'Щербакова', 'Ульяна', 'Юльевна', 'jjj@mail.ru', '89111111122'), 
(12, '1983-08-03', 'Щукин', 'Ким', 'Игнатьевич', 'kkk@mail.ru', '89111111123'), 
(13, '1990-05-18', 'Матвеева', 'Вероника', 'Мироновна', 'lll@mail.ru', '89111111124'), 
(14, '1990-07-12', 'Лукин', 'Никон', 'Федосьевич', 'mmm@mail.ru', '89111111125'), 
(15, '1969-03-02', 'Ершова', 'Глафира', 'Васильевна', 'nnn@mail.ru', '89111111126'), 
(16, '1992-10-09', 'Гордеев', 'Казимир', 'Игоревич', 'ooo@mail.ru', '89111111127');

INSERT INTO resume 
(resume_id, applicant_id, position_wanted, compensation, additional_info)
VALUES 
(1, 1, 'test position name1', 20000, 'I am the best'), 
(2, 2, 'test position name2', 25000, 'I work hard'), 
(3, 3, 'test position name3', 100000, 'I know everything'), 
(4, 4, 'test position name4', 30000, 'I am hardworking'), 
(5, 5, 'test position name5', NULL, 'I am smart'), 
(6, 6, 'test position name6', 40000, NULL), 
(7, 6, 'test position name7', 50000, NULL), 
(8, 8, 'test position name8', 60000, NULL), 
(9, 9, 'test position name9', 70000, NULL), 
(10, 10, 'test position name10', 38000, NULL), 
(11, 11, 'test position name11', 21000, NULL), 
(12, 12, 'test position name12', 55000, NULL), 
(13, 13, 'test position name13', 12000, NULL), 
(14, 14, 'test position name14', 40000, NULL), 
(15, 15, 'test position name15', 39000, NULL), 
(16, 1, 'test position name16', 51000, NULL), 
(17, 1, 'test position name17', NULL, NULL), 
(18, 1, 'test position name18', NULL, NULL), 
(19, 1, 'test position name19', NULL, NULL), 
(20, 1, 'test position name20', 40000, NULL), 
(21, 1, 'test position name21', NULL, NULL), 
(22, 1, 'test position name22', NULL, NULL);

INSERT INTO work_experience 
(work_experience_id, resume_id, employer_name, position, work_description)
VALUES 
(1, 1, 'employer1', 'position1', 'work description 1'), 
(2, 2, 'employer2', 'position2', 'work description 2'), 
(3, 3, 'employer3', 'position3', NULL), 
(4, 4, 'employer4', 'position4', 'work description 4'), 
(5, 5, 'employer5', 'position5', 'work description 5'), 
(6, 6, 'employer6', 'position6', 'work description 6'), 
(7, 7, 'employer7', 'position7', NULL), 
(8, 8, 'employer8', 'position8', 'work description 8');

INSERT INTO application 
(resume_id, vacancy_id, responce_time)
VALUES 
(1, 1, '2020-12-01 10:10:25'), 
(3, 3, '2020-12-01 10:10:40'), 
(5, 2, '2020-12-01 16:10:25'), 
(7, 4, '2020-12-02 10:15:25'), 
(9, 7, '2020-12-02 13:10:25'), 
(11, 6, '2020-12-02 19:10:25'), 
(13, 5, '2020-12-03 09:20:25'), 
(15, 10, '2020-12-03 18:10:25'), 
(17, 13, '2020-12-04 10:10:25'), 
(19, 1, '2020-12-04 10:15:25'), 
(21, 14, '2020-12-04 11:10:25'), 
(22, 17, '2020-12-04 12:20:25'), 
(20, 16, '2020-12-05 10:00:25'), 
(18, 15, '2020-12-05 10:10:25'), 
(16, 9, '2020-12-05 10:20:25'), 
(14, 3, '2020-12-06 10:10:25'), 
(12, 5, '2020-12-06 10:10:25'), 
(10, 17, '2020-12-06 10:10:25'), 
(5, 2, '2020-12-06 10:10:25'), 
(1, 10, '2020-12-06 10:10:25'), 
(5, 13, '2020-12-07 10:10:25'), 
(7, 12, '2020-12-08 10:10:25');

