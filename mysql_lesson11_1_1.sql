CREATE TABLE `shop`.`logs` (
  `date_time` DATETIME NOT NULL,
  `name_of_table` VARCHAR(45) NULL,
  `logged_id` INT NOT NULL,
  `name` VARCHAR(255) NULL)
ENGINE = ARCHIVE
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_ru_0900_as_cs;

DROP TRIGGER IF EXISTS `shop`.`users_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `users_AFTER_INSERT` AFTER INSERT ON `users` FOR EACH ROW BEGIN
	INSERT INTO `shop`.`logs`(`date_time`,`name_of_table`, `logged_id`, `name` ) VALUES (NOW(), `users`, NEW.id, NEW.`name`);

END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `shop`.`catalogs_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `catalogs_AFTER_INSERT` AFTER INSERT ON `catalogs` FOR EACH ROW BEGIN
	INSERT INTO `shop`.`logs`(`date_time`,`name_of_table`, `logged_id`, `name` ) VALUES (NOW(), 'catalogs', NEW.id, NEW.`name`);
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `shop`.`products_AFTER_INSERT`;

DELIMITER $$
USE `shop`$$
CREATE DEFINER=`root`@`localhost` TRIGGER `products_AFTER_INSERT` AFTER INSERT ON `products` FOR EACH ROW BEGIN
	INSERT INTO `shop`.`logs`(`date_time`,`name_of_table`, `logged_id`, `name` ) VALUES (NOW(), 'products1, NEW.id, NEW.`name`);
END$$
DELIMITER ;
