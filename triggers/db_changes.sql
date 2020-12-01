CREATE TABLE owner_types (
  id tinyint unsigned NOT NULL,
  name varchar(255) NOT NULL
);

ALTER TABLE owner_types 
  ADD CONSTRAINT owner_types_PK PRIMARY KEY (id);

RENAME TABLE owner_types TO target_types;

ALTER TABLE animals
  ADD COLUMN owner_type_id tinyint unsigned NOT NULL DEFAULT 0 AFTER owner_type;  
 
DESC animals;

INSERT INTO owner_type 
  VALUES (0, 'owners'), (1, 'organizations');
SELECT * FROM owner_types;
 
UPDATE animals
  SET owner_type_id = 1 
    WHERE owner_type = 'organization'; 

ALTER TABLE animals 
  DROP COLUMN owner_type;
 
SELECT * FROM animals LIMIT 10;

ALTER TABLE animals 
  ADD CONSTRAINT animals_owner_type_id_gk
    FOREIGN KEY (owner_type_id) REFERENCES owner_types(id);

SHOW TABLES;

ALTER TABLE animals 
  CHANGE owner_type target_type_id tinyint unsigned DEFAULT 0 NOT NULL;

ALTER TABLE exchange_ids 
  DROP COLUMN table_name;
 
ALTER TABLE exchange_ids 
  ADD COLUMN target_type_id int unsigned NOT NULL FIRST;

DESC exchange_ids;

ALTER TABLE exchange_ids 
  DROP PRIMARY KEY;
ALTER TABLE exchange_ids 
  ADD CONSTRAINT exchange_ids_PK 
    PRIMARY KEY (target_type_id, origin_id, target_id);
   
ALTER TABLE exchange_ids 
  ADD CONSTRAINT exchange_target_type_id_fk
    FOREIGN KEY (target_type_id) REFERENCES target_types(id);

DESC target_types;
DESC animals;

ALTER TABLE exchange_ids 
  MODIFY COLUMN target_type_id TINYINT UNSIGNED NOT NULL;





