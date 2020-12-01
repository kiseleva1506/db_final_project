CREATE OR REPLACE VIEW short_info AS
SELECT 
  a.id,
  a.chip,
  a.name,
  b.name AS breed,
  k.name AS kind
FROM animals a
  JOIN breeds b
    ON a.breed_id = b.id 
  JOIN kinds k
    ON b.kind_id = k.id; 
 
SELECT * FROM short_info;

CREATE OR REPLACE VIEW owners_info AS
SELECT 
  a.id,
  a.chip,
  a.name,
  own.own_name,
  own.email,
  own.phone,
  own.address
FROM animals a 
  LEFT JOIN (
	SELECT
	  1 AS type,
	  o.id,
	  o.name AS own_name,
	  o.email,
	  o.phone,
	  o.address 
	FROM organizations o
	UNION ALL
	SELECT
	  0,
	  o2.id, 
	  CONCAT_WS(' ', o2.first_name, o2.last_name),
	  o2.email, 
	  o2.phone,
	  o2.address 
	FROM owners o2
	  WHERE o2.show_contacts) AS own 
	ON a.target_type_id = own.type
	  AND a.owner_id = own.id;

SELECT * FROM owners_info;