USE animal_id;

DESC animals;
DESC breeds;
DESC genders;
DESC exchange_ids;
DESC organizations;
DESC parents;
	
ALTER TABLE animals
DROP FOREIGN KEY animals_breed_id_fk;

ALTER TABLE breeds 
  MODIFY COLUMN id smallint unsigned NOT NULL;

-- На колонки  owner_id, chipping_organization_id ограничения будут наложены треггерами
ALTER TABLE animals 
  ADD CONSTRAINT animals_breed_id_fk
    FOREIGN KEY (breed_id) REFERENCES breeds(id),
  ADD CONSTRAINT animals_gender_id_fk
    FOREIGN KEY (gender_id) REFERENCES genders(id);
    
ALTER TABLE breeds 
  ADD CONSTRAINT breeds_kind_id_fk
    FOREIGN KEY (kind_id) REFERENCES kinds(id);

-- На колонку origin_id ограничения будут наложены треггером
ALTER TABLE exchange_ids 
  ADD CONSTRAINT exchange_ids_partner_id_fk
    FOREIGN KEY (partner_id) REFERENCES organizations(id);
    
ALTER TABLE parents 
  ADD CONSTRAINT parents_animal_id_fk
    FOREIGN KEY (animal_id) REFERENCES aminals(id),
  ADD CONSTRAINT parents_parent_id_fk
    FOREIGN KEY (parent_id) REFERENCES aminals(id);

ALTER TABLE photos 
  ADD CONSTRAINT photos_animal_id_fk
    FOREIGN KEY (animal_id) REFERENCES animals(id);