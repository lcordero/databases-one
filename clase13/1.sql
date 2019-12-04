DROP PROCEDURE IF EXISTS Rectangle
DELIMITER //

USE HR //

CREATE PROCEDURE Rectangle(height int, width int, calc int)
BEGIN

    SET @Perimetro = (height*2 + width*2);
    SET @Area = (height * width);
	SELECT
            (CASE
		  WHEN calc = 0 THEN @Perimetro
		  WHEN calc = 1 THEN @Area
		  WHEN calc = 2 THEN CONCAT('Perimetro: ', @Perimetro, ' Area: ', @Area)
		  ELSE "3rd value was not provided" 
		END) AS Result;
 
END //

DELIMITER ;



-- USE HR;
-- CALL Rectangle(2,3,2);


