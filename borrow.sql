CREATE TABLE IF NOT EXISTS `library`.`borrow` (
  `borrow_num` VARCHAR(10) NOT NULL,
  `date` DATETIME NOT NULL,
  `borrow_user` VARCHAR(20) NOT NULL,
  `borrow_book` CHAR(8) NOT NULL,
  PRIMARY KEY (`borrow_num`, `borrow_book`, `borrow_user`),
  INDEX `borrow_user_idx` (`borrow_user` ASC) VISIBLE,
  INDEX `borrow_book_idx` (`borrow_book` ASC) VISIBLE,
  CONSTRAINT `borrow_book`
    FOREIGN KEY (`borrow_book`)
    REFERENCES `library`.`book` (`call_num`),
  CONSTRAINT `borrow_user`
    FOREIGN KEY (`borrow_user`)
    REFERENCES `library`.`user` (`user_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8