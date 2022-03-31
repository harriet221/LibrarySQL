CREATE TABLE IF NOT EXISTS `library`.`book` (
  `call_num` CHAR(8) NOT NULL,
  `title` VARCHAR(45) NOT NULL,
  `author` VARCHAR(45) NOT NULL,
  `publisher` VARCHAR(20) NOT NULL,
  `price` VARCHAR(20) NULL DEFAULT NULL,
  `on_loan` CHAR(1) NOT NULL DEFAULT 'X',
  `bookstore_name` VARCHAR(20) NOT NULL,
  `bookstore_loca` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`call_num`),
  INDEX `fk_book_bookstore1_idx` (`bookstore_name` ASC, `bookstore_loca` ASC) VISIBLE,
  CONSTRAINT `fk_book_bookstore1`
    FOREIGN KEY (`bookstore_name` , `bookstore_loca`)
    REFERENCES `library`.`bookstore` (`store_name` , `location`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8