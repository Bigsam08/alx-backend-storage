-- Script that creates a stored procedure computing average weight of students

DELIMITER $$
DROP PROCEDURE IF EXIST ComputeAverageWeightedScoreForUsers;
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
	UPDATE users set average_score = (SELECT
	SUM(corrections.score * projects.weight) / SUM(projects.weight)
	FROM corrections INNER JOIN projects ON projects.id
	= corrections.project_id WHERE corrections.user_id = users.id);
END $$
DELIMITER ;