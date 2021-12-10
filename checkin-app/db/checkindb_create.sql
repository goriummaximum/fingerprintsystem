CREATE TABLE STUDENT (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL,
	student_id VARCHAR(10) NOT NULL,
	student_fname VARCHAR(256) NOT NULL,
	student_lname VARCHAR(256) NOT NULL,
	fingerprint_id VARCHAR(5) NOT NULL,
	CONSTRAINT PK_STUDENT PRIMARY KEY (id),
	CONSTRAINT UC_STUDENT UNIQUE (student_id, fingerprint_id)
);

CREATE TABLE CHECKIN_STATUS (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL,
	checkin_date DATE NOT NULL,
	checkin_status VARCHAR(50) NOT NULL,
	STUDENT_id INT UNSIGNED NOT NULL,
	CONSTRAINT PK_CHECKIN_STATUS PRIMARY KEY (id),
	CONSTRAINT FK_CHECKIN_STATUS_STUDENT FOREIGN KEY (STUDENT_id) REFERENCES STUDENT(id)
	ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE WEB_ACCOUNT (
	id INT UNSIGNED AUTO_INCREMENT NOT NULL,
	usrname VARCHAR(256) NOT NULL,
	pswd VARCHAR(256) NOT NULL,
	CONSTRAINT PK_WEB_ACCOUNT PRIMARY KEY (id),
	CONSTRAINT UC_WEB_ACCOUNT UNIQUE (usrname)
);