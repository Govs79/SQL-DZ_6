DROP DATABASE IF EXISTS DZ_6;
CREATE DATABASE DZ_6;
USE DZ_6;
-- 1.	Создайте функцию, которая принимает кол-во сек и форматирует их в кол-во дней, часов, минут и секунд.
-- Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds '
DROP PROCEDURE IF EXISTS perevod_time;
DELIMITER //
CREATE PROCEDURE perevod_time
(
IN numers INT,
OUT result VARCHAR(48)
)
BEGIN
	DECLARE days INT DEFAULT 0;
    DECLARE hors INT DEFAULT 0;
    DECLARE min INT DEFAULT 0;
    DECLARE sec INT DEFAULT 0;
	SET days = numers/24/3600;
    SET hors = numers/3600 - days*24;
    SET min = numers/60 - hors*60;
    SET sec = numers-min*60-hors*3600;
    SET result = concat(days, " ", "days", " ", hors, " ", "hours", " ", min, " ", "minutes", " ", sec, " ", "seconds");
    
END ;
CALL perevod_time(123456, @res);
SELECT @res AS Rezultat;

--Выведите только чётные числа от 1 до 10, используя процедуру:
--Пример: 2,4,6,8,10


    
				
    
    




