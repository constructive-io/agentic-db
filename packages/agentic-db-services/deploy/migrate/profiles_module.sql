-- Deploy: migrate/profiles_module
-- made with <3 @ constructive.io

-- requires: migrate/secrets_module


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

INSERT INTO metaschema_modules_public.profiles_module (
  id,
  database_id,
  schema_id,
  private_schema_id,
  table_id,
  table_name,
  profile_permissions_table_id,
  profile_permissions_table_name,
  profile_grants_table_id,
  profile_grants_table_name,
  profile_definition_grants_table_id,
  profile_definition_grants_table_name,
  membership_type,
  entity_table_id,
  actor_table_id,
  permissions_table_id,
  memberships_table_id,
  prefix
) VALUES
  ('b561958a-2272-e231-1117-4b03b236dda0', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', '3c4ef6b4-438c-128a-7654-5af17798e439', 'ff68a994-9cfa-941b-87eb-5ec60dbdae3f', 'app_profiles', '4b945fc0-35ce-4572-474e-64aff2ccfdba', 'app_profile_permissions', '311b0020-49ae-0be0-96f9-1898de82b5d2', 'app_profile_grants', 'c3940522-a8c3-a968-e6ae-38d1d9012a3c', 'app_profile_definition_grants', 1, NULL, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'ca24d8bc-b171-7a6a-dc68-32fe80aa7104', 'e3ae0365-15b3-6099-221b-679517ddb34f', 'app'),
  ('b8295f8d-b7a2-dafb-b93a-ac3403ec157e', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', '3c4ef6b4-438c-128a-7654-5af17798e439', '7de7e40f-df51-8d00-bbe0-ee19689c6a54', 'org_profiles', 'a9fcf3a5-099e-b18f-43b0-b53a43e3b08e', 'org_profile_permissions', 'b6152d39-af25-e6bb-81b2-facfc197076d', 'org_profile_grants', '59240125-d30b-51ef-6da3-d66304611679', 'org_profile_definition_grants', 2, 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'a42ab990-9bfb-d930-3f98-a01493cc2158', 'da94e2fc-8b9e-bbf6-b88b-49c68622ae01', '6e632c12-0767-3649-3a82-caefb7a3378a', 'org');


SET session_replication_role TO DEFAULT;


