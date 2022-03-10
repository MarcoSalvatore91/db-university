-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'number_enrolment', YEAR(`enrolment_date`) AS `year`
FROM `students`
GROUP BY `year`

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT COUNT(*) AS 'num_teachers', `office_number` AS `office`
FROM `teachers`
GROUP BY `office` 

-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT COUNT(*) AS `number`, `exam_id` AS `exam`, ROUND(AVG(`vote`))
FROM `exam_student`
GROUP BY `exam`

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT COUNT(*) AS `number_dep`, `department_id` AS `departments`
FROM `degrees`
GROUP BY `departments`