-- 1. Selezionare tutti gli studenti nati nel 1990

SELECT `name`, `surname`, `date_of_birth` AS `year`
FROM `students`
WHERE YEAR(`date_of_birth`) = 1990

-- 2. Selezionare tutti i corsi che valgono più di 10 crediti

SELECT `name`, `cfu` AS `credits`
FROM `courses`
WHERE `cfu` > 10

-- 3. Selezionare tutti gli studenti che hanno più di 30 anni

SELECT `name`, `surname`, `date_of_birth` AS `age`
FROM `students`
WHERE YEAR(`date_of_birth`) < 1992
AND MONTH(`date_of_birth`) < 03
AND DAY(`date_of_birth`) < 09
ORDER BY `date_of_birth` ASC

-- Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea