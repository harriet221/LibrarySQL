CREATE TABLE IF NOT EXISTS `library`.`bookstore` (
  `store_name` VARCHAR(20) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `responsible` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`store_name`, `location`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8