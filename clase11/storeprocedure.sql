DROP PROCEDURE IF EXISTS GetCountryName

DELIMITER //

USE HR //

CREATE PROCEDURE GetCountryName(reg_id int)
BEGIN
	DECLARE reg_id INT DEFAULT 2;
	SELECT 
		countries.COUNTRY_NAME 
    FROM
		countries
	WHERE
		countries.REGION_ID = reg_id;
END //
DELIMITER ;

-- CALL GetCountryName(3)


-- ================================================
-- SALARIOS

DROP PROCEDURE IF EXISTS GetUserSalaryRange

DELIMITER //

USE HR //

CREATE PROCEDURE GetUserSalaryRange(IN user_id int, OUT salary_range VARCHAR(6))
BEGIN
	DECLARE user_salary INT;
	SELECT 
		e.salary into user_salary
    FROM
		employees e
	WHERE
		e.EMPLOYEE_ID = user_id;
        
	IF user_salary <= 10000 THEN
		SET salary_range = 'Bajo';
    ELSEIF (user_salary > 10000 AND user_salary <= 20000) THEN
		SET salary_range = 'Medio';
    ELSEIF (user_salary > 20000) THEN
		SET salary_range = 'Alto';
	END IF;
END //
DELIMITER ;

-- CALL GetUserSalaryRange(101, @user_salary_range);
-- select @user_salary_range