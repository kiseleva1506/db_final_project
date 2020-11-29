DROP TRIGGER IF EXISTS parents_number_validation;

DELIMITER //

CREATE TRIGGER parents_number_validation BEFORE INSERT ON parents

FOR EACH ROW 
  BEGIN 
	IF (SELECT COUNT(animal_id) FROM parents WHERE animal_id = NEW.animal_id) > 1 THEN 
	  SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding parent! Target table can contain only 2 rows!";
	END IF;

	IF NEW.animal_id = NEW.parent_id THEN 
	  SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error adding parent!";
	END IF;
  END//
  
DELIMITER ;

-- INSERT INTO parents (animal_id, parent_id)
--   VALUES (6, 8);
 
DROP TRIGGER IF EXISTS parents_number_update_validation;

DELIMITER //

CREATE TRIGGER parents_number_update_validation BEFORE UPDATE ON parents

FOR EACH ROW 
  BEGIN 
	IF (SELECT COUNT(animal_id) FROM parents WHERE animal_id = NEW.animal_id) > 1 THEN 
	  SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error updating parent! Target table can contain only 2 rows!";
	END IF;

	IF NEW.animal_id = NEW.parent_id THEN 
	  SIGNAL SQLSTATE "45000"
      SET MESSAGE_TEXT = "Error updating parent!";
	END IF;
  END//
  
DELIMITER ;

-- UPDATE parents 
--   SET 
--     animal_id = 10
--   WHERE 
--     animal_id = 9;