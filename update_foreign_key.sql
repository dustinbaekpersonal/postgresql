UPDATE PERSON SET CAR_ID = 1 WHERE ID = 2;
UPDATE PERSON SET CAR_ID = 2 WHERE ID = 1;
-- this will return error due to foreign key constraint
UPDATE PERSON SET CAR_ID = 3 WHERE ID = 3;