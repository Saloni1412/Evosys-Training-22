CREATE VIEW salesman AS 
SELECT
    *
FROM
    employees
WHERE
    job_title = 'Sales Representative';
    

SELECT * FROM salesman;

--creating another view from our prev view "salesman"
CREATE VIEW salesman_contacts AS 
SELECT
    first_name,
    last_name,
    email,
    phone
FROM
    salesman;

SELECT * FROM salesman_contacts;

--dropping view salesman
DROP VIEW salesman;

--You can check the status of a view by querying data from the user_objects view.
--Note that the object name must be in uppercase.
SELECT
    object_name,
    status
FROM
    user_objects
WHERE
    object_type = 'VIEW'
    AND object_name = 'SALESMAN_CONTACTS';
    
SELECT * FROM salesman_contacts;--will show error coz we deleted his parent view. Hence, we ill drop it
DROP VIEW salesman_contacts;
