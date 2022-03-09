-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT COUNT(*) AS 'number_enrolment', YEAR(`enrolment_date`) AS `year`
FROM `students`
GROUP BY `year`