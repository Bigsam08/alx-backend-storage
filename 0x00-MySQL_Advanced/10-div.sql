-- SCRIPT that creates a function SafeDiv that divides and return 0 or first
-- by second number

DELIMITER //

DROP FUNCTION IF EXISTS SafeDiv;
CREATE FUNCTION SafeDiv (
	a INT,
	b INT)
	RETURNS FLOAT DETERMINISTIC
	BEGIN
		RETURN (IF (b = 0, 0, a/b));
	END //

	DELIMITER;