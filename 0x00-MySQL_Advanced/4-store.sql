--  create trigger that decreases the qty of item after adding new order
CREATE TRIGGER decreament
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items SET quantity = quantity - NEW.number WHERE NAME = NEW.item_name;