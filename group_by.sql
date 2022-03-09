-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'number_enrolment', YEAR(`enrolment_date`) AS `year`
FROM `students`
GROUP BY `year`

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(*) AS 'num_teachers', `office_number` AS `office`
FROM `teachers`
GROUP BY `office` 