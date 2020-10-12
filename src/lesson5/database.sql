CREATE TABLE schools
(
	school_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	address VARCHAR(100) NOT NULL
);

CREATE TABLE teachers
(
	teacher_id SERIAL PRIMARY KEY,
	school_id SERIAL,
	fio VARCHAR(30) NOT NULL,
	age INTEGER NOT NULL,
	gender VARCHAR(10) NOT NULL
);

CREATE TABLE subjects
(
	subject_id SERIAL PRIMARY KEY,
	name VARCHAR(10) NOT NULL
);

CREATE TABLE pupils
(
	pupil_id SERIAL PRIMARY KEY,
	school_id SERIAL,
	fio VARCHAR(30) NOT NULL,
	age INTEGER NOT NULL,
	gender VARCHAR(10) NOT NULL
);

CREATE TABLE teachers_subjects
(
	ts_id SERIAL PRIMARY KEY,
	teacher_id INTEGER,
	subject_id INTEGER
);

CREATE TABLE pupils_subjects
(
	ps_id SERIAL PRIMARY KEY,
	pupil_id INTEGER,
	subject_id INTEGER
);

ALTER TABLE teachers_subjects
ADD CONSTRAINT teacher_id_fk_constraint
FOREIGN KEY (teacher_id) REFERENCES teachers (teacher_id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE teachers_subjects
ADD CONSTRAINT subject_id_fk_constraint
FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE pupils_subjects
ADD CONSTRAINT pupil_id_fk_constraint
FOREIGN KEY (pupil_id) REFERENCES pupils (pupil_id)
ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE pupils_subjects
ADD CONSTRAINT subjectP_id_fk_constraint
FOREIGN KEY (subject_id) REFERENCES subjects (subject_id)
ON UPDATE CASCADE ON DELETE CASCADE;