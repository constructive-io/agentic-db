-- Deploy: migrate/spatial_relation
-- made with <3 @ constructive.io

-- requires: migrate/embedding_chunks


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.spatial_relation (
  id,
  database_id,
  table_id,
  field_id,
  ref_table_id,
  ref_field_id,
  name,
  operator,
  param_name,
  category,
  tags
) VALUES
  ('2e6b83b8-6146-3446-6432-5199737ba0e1', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '78d08852-1160-0dfb-193a-e1ba85d840cd', '6f42c1fc-e7e9-de7a-d56f-dda42af79402', 'de2b13f3-5772-6b0d-8106-25a34bd55533', 'e528c5f5-3853-c569-ca98-312f52a0d02a', 'nearbyPlaces', 'st_dwithin', 'distance', 'app', '{}'),
  ('c21adbec-9b1a-ec64-d9fa-d13c776f0d80', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '78d08852-1160-0dfb-193a-e1ba85d840cd', '6f42c1fc-e7e9-de7a-d56f-dda42af79402', '78d08852-1160-0dfb-193a-e1ba85d840cd', '6f42c1fc-e7e9-de7a-d56f-dda42af79402', 'nearbyMemories', 'st_dwithin', 'distance', 'app', '{}'),
  ('c99fe12f-4e2d-0ddd-6905-e8eacd31670c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'b6f18c67-1134-b1b8-e7a7-f9e282bd6811', '64691dab-b478-acc8-bb55-2d5bc8df8eb0', '5e8637f4-a7b5-1655-b15a-3518077c69e4', '2d7ab33b-f99e-0c4e-90b0-801b1be6a0ed', 'nearbyVenues', 'st_dwithin', 'distance', 'app', '{}'),
  ('e559319a-077a-37e9-2e34-ff0bea572185', '65a856dc-b301-12f0-d108-9c49d8b99bf0', 'b6ee757b-d48b-0c2d-e484-322f82a1e167', '908de6ec-ff19-52a6-35e1-25711954c0d4', '5e8637f4-a7b5-1655-b15a-3518077c69e4', '2d7ab33b-f99e-0c4e-90b0-801b1be6a0ed', 'nearbyVenues', 'st_dwithin', 'distance', 'app', '{}'),
  ('fc22c253-9d2e-69a0-3be5-4034e6c0b3f3', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '78d08852-1160-0dfb-193a-e1ba85d840cd', '6f42c1fc-e7e9-de7a-d56f-dda42af79402', '37eed52f-fa1c-528c-1f77-688ac4b81f40', '6efb683f-abc1-7755-6cda-9b41fa62ac74', 'nearbyContacts', 'st_dwithin', 'distance', 'app', '{}');


SET session_replication_role TO DEFAULT;


