-- -- This doesn't work because constraint NOT NULL throws an error
-- ALTER TABLE PERSON
-- ADD COLUMN COUNTRY_OF_BIRTH VARCHAR(50) NOT NULL,
-- ADD COLUMN JOB VARCHAR;

-- To solve this problem, 
-- 1. add the column without NOT NULL constraint
ALTER TABLE PERSON
ADD COLUMN COUNTRY_OF_BIRTH VARCHAR(50),
ADD COLUMN JOB VARCHAR(50);

-- 2. update the values in COUNTRY_OF_BIRTH columns
UPDATE PERSON
SET COUNTRY_OF_BIRTH = 'South Korea'
WHERE ID = 1;

-- 3. then set NOT NULL constraint
ALTER TABLE PERSON
ALTER COLUMN COUNTRY_OF_BIRTH SET NOT NULL;
