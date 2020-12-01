-- количество животных в разрезе видов и пород
SELECT DISTINCT
  k.id AS kind_id,
  k.name AS kind,
  b.id AS breed_id,
  b.name AS breed, 
  COUNT(a.id) OVER(PARTITION BY k.id) AS num_per_kind,
  COUNT(a.id) OVER(PARTITION BY b.id) AS num_per_breed
FROM animals a
  JOIN breeds b 
    ON a.breed_id = b.id 
  JOIN kinds k 
    ON b.kind_id = k.id
ORDER BY kind_id, breed_id;

-- родители определенного животного с именами и телефонами владельцев
SELECT 
  a.id AS parent_ad,
  a.name AS parent_name,
  CASE 
    WHEN a.target_type_id = 0 THEN 'person'
    WHEN a.target_type_id = 1 THEN 'organazation' 
  END AS own_type,
  a.owner_id,
  COALESCE(o3.name, CONCAT_WS(' ', o2.first_name, o2.last_name)) AS own_name,
  COALESCE(o3.phone, o2.phone) AS phone
FROM parents p 
  JOIN animals a 
    ON p.parent_id = a.id
  LEFT JOIN owners o2 
    ON a.target_type_id = 0
      AND o2.show_contacts 
      AND a.owner_id = o2.id 
  LEFT JOIN organizations o3 
    ON a.target_type_id = 1
      AND a.owner_id = o3.id 
WHERE p.animal_id = 2;

-- выбрать все чипирующие организации и количество чипированных ими жевотных
SELECT 
  o.name,
  o.phone,
  COUNT(a.id) AS animal_num 
FROM organizations o 
  LEFT JOIN animals a 
    ON o.id = a.chipping_organization_id 
WHERE o.is_chipping
GROUP BY o.name, o.phone;

-- выгрузка данных для партнера 87
WITH animals_target_ids AS (
  SELECT 
    ei3.origin_id,
    ei3.target_id 
  FROM exchange_ids ei3 
    WHERE ei3.partner_id = 78
      AND ei3.target_type_id = 3
),
chipping_org_ids AS (
  SELECT 
    ei4.origin_id,
    ei4.target_id 
  FROM exchange_ids ei4
    WHERE ei4.partner_id = 78
      AND ei4.target_type_id = 1
)
SELECT 
  ati.target_id AS target_animal_id, 
  a.id,
  a.name,
  a.chip,
  coi.target_id AS target_chipping_org_id,
  a.chipping_organization_id,
  o.name,
  o.phone,
  o.address
FROM animals a
  LEFT JOIN animals_target_ids ati
    ON ati.origin_id = a.id
  LEFT JOIN chipping_org_ids coi
    ON coi.origin_id = a.chipping_organization_id
  LEFT JOIN organizations o 
    ON a.chipping_organization_id = o.id;