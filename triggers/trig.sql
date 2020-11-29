DELIMITER //

DROP FUNCTION IF EXISTS is_row_exists//
CREATE FUNCTION is_row_exists (target_id INT, target_type_id INT)
RETURNS BOOLEAN READS SQL DATA

BEGIN
  DECLARE table_name VARCHAR(50);
  SELECT name FROM target_types WHERE id = target_type_id INTO table_name;
  
  CASE table_name
    WHEN 'owners' THEN
      RETURN EXISTS(SELECT 1 FROM owners WHERE id = target_id);
    WHEN 'organizations' THEN 
      RETURN EXISTS(SELECT 1 FROM organizations WHERE id = target_id);
    WHEN 'animals' THEN 
      RETURN EXISTS(SELECT 1 FROM animals WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;  
END//


DROP FUNCTION IF EXISTS chipper_is_row_exists//
CREATE FUNCTION chipper_is_row_exists (target_id INT)
RETURNS BOOLEAN READS SQL DATA

BEGIN
    RETURN EXISTS(SELECT 1 FROM organizations WHERE id = target_id AND is_chipping = 1);
END//


DROP TRIGGER IF EXISTS owner_validation//
CREATE TRIGGER owner_validation BEFORE INSERT ON animals

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.owner_id, NEW.target_type_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding owner! Target table doesn't contain row id provided!";
  END IF;
END//


DROP TRIGGER IF EXISTS chipping_organization_validation//
CREATE TRIGGER chipping_organization_validation BEFORE INSERT ON animals

FOR EACH ROW BEGIN
  IF !chipper_is_row_exists(NEW.chipping_organization_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding chipping organization! Target table doesn't contain row id provided!";
  END IF;
END//


DROP TRIGGER IF EXISTS origin_id_validation//
CREATE TRIGGER origin_id_validation BEFORE INSERT ON exchange_ids

FOR EACH ROW BEGIN
  IF !is_row_exists(NEW.origin_id, NEW.target_type_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding origing id! Target table doesn't contain row id provided!";
  END IF;
END//

DELIMITER ;
    
-- INSERT INTO animals (name, chip, breed_id, gender_id, target_type_id, owner_id, chipping_organization_id)
--   VALUES ('Ласка', '123654789654123654789', 1, 3, 0, 12, 11);
--   
-- INSERT INTO animals (name, chip, breed_id, gender_id, target_type_id, owner_id, chipping_organization_id)
--   VALUES ('Ласка', '123654789654123654709', 1, 3, 0, 12, 111);
--  
-- INSERT INTO animals (name, chip, breed_id, gender_id, target_type_id, owner_id, chipping_organization_id)
--   VALUES ('Ласка', '123654789654123654780', 1, 3, 1, 12, 11);
-- 
-- INSERT INTO animals (name, chip, breed_id, gender_id, target_type_id, owner_id, chipping_organization_id)
--   VALUES ('Ласка', '123654789604123654780', 1, 3, 1, 120, 11);

SELECT * FROM target_types;
INSERT INTO target_types  
  VALUES (3, 'animals');

INSERT INTO exchange_ids (target_type_id, origin_id, target_id, partner_id)
  VALUES (3, 15, 357, 78);

INSERT INTO exchange_ids (target_type_id, origin_id, target_id, partner_id)
  VALUES (3, 155, 357, 78);


