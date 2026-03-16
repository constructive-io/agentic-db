-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/check_constraint


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

INSERT INTO metaschema_public.full_text_search (
  id,
  database_id,
  table_id,
  field_id,
  field_ids,
  weights,
  langs
) VALUES
  ('bfc17bd4-88df-4ce8-85ab-746fced26fff', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc15408-cbc4-4c59-b505-cd51e0ad5353', 'bfc10426-24ff-4b0e-0352-40e6592ea79b', '{bfc14089-7316-45ae-1e2a-1738315ac245,bfc1f654-d2b7-4628-da54-12fd5f6e6724}', '{A,B}', '{pg_catalog.simple,pg_catalog.simple}'),
  ('bfc16823-464b-4c22-d4d6-0a8c3cd4aaad', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1e37e-649a-489d-15ee-a7f8b616548b', 'bfc18f1c-be62-44d8-6531-da1143fe20c2', '{bfc12e6e-3475-404c-75d6-5af3a6a7860f,bfc14a21-4004-4ad3-dce7-cb6acdc1da72,bfc16601-e94b-4677-8b22-3416f82a66c8,bfc12685-4fb0-4cfa-3fbd-d2b256b12d19}', '{A,A,B,C}', '{english,english,english,english}'),
  ('bfc1185d-a7ca-4847-1d67-889464b1df66', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1a234-f3ff-488f-eddd-ad16cd368a7a', 'bfc1d8a7-c98b-4cf5-9149-7b52deee913f', '{bfc129c1-f000-47f5-0eaf-a39d8b87bcc2,bfc18e41-51e3-459d-91c9-98b09cb4ad98,bfc1c651-6083-4aa4-f350-ab0786a971fb}', '{A,B,C}', '{english,english,english}'),
  ('bfc13e08-14c7-4d24-d404-ceb9b16fa600', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc14c97-73d3-4d73-e2b5-f8426dd402bc', 'bfc1c2e4-7394-4eea-a0d9-a262a236d74b', '{bfc16ad7-e84b-49c8-fa33-ad8a80634b45,bfc1c52e-4d3d-4a96-74cf-06e21f159752,bfc11242-80ea-4e96-315d-4df4a956b321}', '{A,B,C}', '{english,english,english}'),
  ('bfc14c36-97e1-402d-f283-45b4771786c8', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc1987b-36fd-4638-94c7-03e829ef66ef', 'bfc1e5da-4232-41a7-99eb-55ad0d3be4fa', '{bfc10059-20e8-4ca3-403d-d878563aaadd,bfc1ecc4-7a37-4170-5d0a-e187ed990d72,bfc14b37-d79e-4077-c12e-8b5b732af9e7}', '{A,B,C}', '{english,english,english}'),
  ('bfc11e4d-496c-4fb8-0072-24b8ae200a3d', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc18d1c-0bae-4d94-f5d1-bc3b0ab9d39b', 'bfc193ca-4b35-4b04-d319-4c4b592c3dfb', '{bfc11915-4470-4503-2618-41e20c9a5ec0,bfc1a95a-3d79-4d54-c819-f45760e8b170}', '{A,B}', '{english,english}'),
  ('bfc11647-eadf-4fcd-16de-3013421c55e1', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'bfc114e5-73ac-42b3-343f-beef63ec3352', 'bfc11abb-261f-482a-24ed-d8a4fc21a371', '{bfc13a47-33ec-4c20-e6ce-892e8eb75b4a,bfc19f4a-6ab0-4677-a692-beec7866b129}', '{A,B}', '{english,english}');


SET session_replication_role TO DEFAULT;


