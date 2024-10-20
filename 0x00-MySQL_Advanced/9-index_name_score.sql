-- SCRIPT that creates an index, first letter of name and score from tables name
CREATE INDEX idx_name_first_score
ON names(name(1), score);