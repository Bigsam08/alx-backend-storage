-- Script that creates an index name first letter of a name.
CREATE INDEX idx_name_first
ON names(name(1));