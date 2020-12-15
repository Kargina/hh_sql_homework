CREATE TABLE employer (
    employer_id serial PRIMARY KEY,
    employer_name text
);

CREATE TABLE area (
    area_id serial PRIMARY KEY,
    area_name text
);

CREATE TABLE vacancy (
    vacancy_id serial PRIMARY KEY,
    employer_id integer NOT NULL REFERENCES employer (employer_id),
    position_name text NOT NULL,
    compensation_from integer,
    compensation_to integer,
    compensation_gross boolean,
    vacancy_description text,
    creation_time timestamp,
    area_id integer NOT NULL REFERENCES area(area_id)
);

CREATE TABLE applicant (
    applicant_id serial PRIMARY KEY,
    birth_date date,
    last_name character (32),
    first_name character (32),
    middle_name character (32),
    email text,
    phone_number text
);

CREATE TABLE resume (
    resume_id serial PRIMARY KEY,
    applicant_id integer NOT NULL REFERENCES applicant (applicant_id),
    position_wanted text,
    compensation integer,
    additional_info text
);

CREATE TABLE work_experience (
    work_experience_id serial PRIMARY KEY,
    resume_id integer NOT NULL REFERENCES resume (resume_id),
    employer_name text,
    position text,
    work_description text
);

CREATE TABLE application (
    resume_id integer NOT NULL REFERENCES resume (resume_id),
    vacancy_id integer NOT NULL REFERENCES vacancy (vacancy_id),
    responce_time timestamp
);

