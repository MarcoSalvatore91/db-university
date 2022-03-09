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

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea

SELECT `name`, `period` AS `I_semester`, `year`
FROM `courses`
WHERE `period` LIKE 'I semestre'
AND `year` = 1

-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020

SELECT `location`, `date`, `hour`
FROM `exams`
WHERE `date` LIKE '2020-06-20'
AND `hour` > '14:%:%'
ORDER BY `hour` ASC

-- 6. Selezionare tutti i corsi di laurea magistrale

SELECT `name` AS `courses_master_degree`, `level`
FROM `degrees`
WHERE `name` LIKE '%Magistrale%'

-- 