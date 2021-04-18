USE `shop`;
DROP function IF EXISTS `hello`;

DELIMITER $$
USE `shop`$$
CREATE FUNCTION `hello` ()
RETURNS TEXT NO SQL
BEGIN
	DECLARE hours_now INT;
    DECLARE message TEXT;
    SET hours_now =  hour(current_time());
    
    IF ((hours_now >= 6) AND (hours_now < 12)) THEN 
		SET message = 'доброе утро';
        ELSEIF ((hours_now >= 12) AND (hours_now < 18)) THEN
			SET message = 'добрый день';
        ELSEIF (hours_now >= 18)  THEN
			SET message = 'добрый вечер';
		ELSE
			SET message = 'доброй ночи';
	END IF;
RETURN message;
END$$

DELIMITER ;

