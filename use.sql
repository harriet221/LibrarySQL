CREATE TABLE IF NOT EXISTS `library`.`use` (
  `use_num` VARCHAR(20) NOT NULL,
  `use_date` DATETIME NOT NULL,
  `using_time` INT NOT NULL DEFAULT '20',
  `use_user` VARCHAR(20) NOT NULL,
  `use_docu` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`use_num`, `use_docu`, `use_user`),
  INDEX `use_user_idx` (`use_user` ASC) VISIBLE,
  INDEX `use_docu_idx` (`use_docu` ASC) VISIBLE,
  CONSTRAINT `use_docu`
    FOREIGN KEY (`use_docu`)
    REFERENCES `library`.`document` (`docu_num`),
  CONSTRAINT `use_user`
    FOREIGN KEY (`use_user`)
    REFERENCES `library`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8