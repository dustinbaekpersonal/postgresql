-- If there is a conflicting INSERT statement due to UNIQUE column constraint,
-- latest request will have no effect.
-- But we still might want to do somethingelse other than do nothing.
-- e.g. user registering on website, requests to register to the server
--      user submits two subsequent requests with different email.
--      in this case, we want to use latest email request
-- This normally happens in distributed system, 2 servers sitting above load balancer

-- INSERT INTO PERSON (FIRST_NAME, LAST_NAME, GENDER, DATE_OF_BIRTH, EMAIL, COUNTRY_OF_BIRTH)
-- VALUES ('BAR', 'FOO', 'FEMALE', DATE 'XXXX-XX-XX', 'BARFOO@gmail.com', 'UK');

---- if we were to make an update on email
INSERT INTO PERSON (ID, FIRST_NAME, LAST_NAME, GENDER, DATE_OF_BIRTH, EMAIL, COUNTRY_OF_BIRTH)
VALUES (2, 'BAR', 'FOO', 'FEMALE', DATE 'XXXX-XX-XX', 'BARFOO@gmail.com', 'UK')
ON CONFLICT (ID) DO UPDATE SET EMAIL = EXCLUDED.EMAIL;
