CREATE TABLE schools
(
	school_id SERIAL PRIMARY KEY,
	name VARCHAR(30) NOT NULL,
	address VARCHAR(100) NOT NULL
);
COMMENT ON COLUMN schools.school_id IS 'Идентификатор школы';
COMMENT ON COLUMN schools.name IS 'Название школы';
COMMENT ON COLUMN schools.address IS 'Адрес школы';

CREATE TABLE teachers
(
	teacher_id SERIAL PRIMARY KEY,
	school_id SERIAL,
	fio VARCHAR(30) NOT NULL,
	age INTEGER NOT NULL,
	gender VARCHAR(10) NOT NULL,
	FOREIGN KEY(school_id) REFERENCES schools(school_id)
);
COMMENT ON COLUMN teachers.teacher_id IS 'Идентификатор учителя';
COMMENT ON COLUMN teachers.school_id IS 'Идентификатор школы';
COMMENT ON COLUMN teachers.fio IS 'ФИО учителя';
COMMENT ON COLUMN teachers.age IS 'Возраст учителя';
COMMENT ON COLUMN teachers.gender IS 'Пол учителя';

CREATE TABLE subjects
(
	subject_id SERIAL PRIMARY KEY,
	name VARCHAR(10) NOT NULL
);
COMMENT ON COLUMN subjects.subject_id IS 'Идентификатор предмета';
COMMENT ON COLUMN subjects.name IS 'Название предмета';

CREATE TABLE pupils
(
	pupil_id SERIAL PRIMARY KEY,
	school_id SERIAL,
	fio VARCHAR(30) NOT NULL,
	age INTEGER NOT NULL,
	gender VARCHAR(10) NOT NULL,
	FOREIGN KEY(school_id) REFERENCES schools(school_id)
);
COMMENT ON COLUMN pupils.pupil_id IS 'Идентификатор ученика';
COMMENT ON COLUMN pupils.school_id IS 'Идентификатор школы';
COMMENT ON COLUMN pupils.fio IS 'ФИО ученика';
COMMENT ON COLUMN pupils.age IS 'Возраст ученика';
COMMENT ON COLUMN pupils.gender IS 'Пол ученика';

CREATE TABLE teachers_subjects
(
	teacher_id INTEGER,
	subject_id INTEGER
);
COMMENT ON COLUMN teachers_subjects.teacher_id
IS 'Идентификатор учителя';
COMMENT ON COLUMN teachers_subjects.subject_id
IS 'Идентификатор предмета';

CREATE TABLE pupils_subjects
(
	pupil_id INTEGER,
	subject_id INTEGER
);
COMMENT ON COLUMN pupils_subjects.pupil_id
IS 'Идентификатор ученика';
COMMENT ON COLUMN pupils_subjects.subject_id
IS 'Идентификатор предмета';

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