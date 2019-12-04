DROP PROCEDURE IF EXISTS Rectangle
DELIMITER //

USE HR //

CREATE PROCEDURE DireccionCompleta(user_id int)
BEGIN

    SELECT l.street_address, l.postal_code, l.city, l.state_province, c.country_name, r.region_name
    FROM employees e
    INNER JOIN departments d ON e.department_id = d.department_id
    INNER JOIN locations l ON d.location_id = l.location_id
    INNER JOIN countries c ON c.country_id = l.country_id
    INNER JOIN regions r ON r.region_id = c.region_id
    WHERE e.EMPLOYEE_ID = user_id;
 
END //

DELIMITER ;


-- USE HR;
-- CALL DireccionCompleta(110);
