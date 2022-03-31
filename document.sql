CREATE TABLE IF NOT EXISTS `library`.`document` (
  `docu_num` VARCHAR(20) NOT NULL,
  `subject` VARCHAR(10) NOT NULL,
  `on_use` CHAR(1) NOT NULL DEFAULT 'X',
  PRIMARY KEY (`docu_num`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8