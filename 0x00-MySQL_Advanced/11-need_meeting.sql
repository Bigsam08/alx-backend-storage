-- SCRIPT that creates a view need_meeting, list students with score under 80
DROP VIEW IF EXISTS need_meeting;
CREATE VIEW need_meeting AS
SELECT name FROM students WHERE score < 80
AND (students.last_meeting IS NULL OR students.last_meeting < DATE_ADD(NOW(),INTERVAL -1 MONTH));