CREATE TABLE IF NOT EXISTS PERSON (
    ID BIGSERIAL NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) NOT NULL,
    GENDER VARCHAR(7) NOT NULL,
    DATE_OF_BIRTH DATE NOT NULL,
    EMAIL VARCHAR(150) 
);

INSERT INTO PERSON (FIRST_NAME, LAST_NAME, GENDER, DATE_OF_BIRTH)
VALUES ('DUSTIN', 'BAEK', 'MALE', '1998-09-04');

SELECT * FROM PERSON;
