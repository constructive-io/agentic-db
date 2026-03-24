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
  ('019d20cd-a114-7ec4-8536-fef0d62f99d4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a115-7835-b894-11934151e604', '019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', '019d20cd-a27b-7d73-939c-036980d8139b', 'app_profiles', '019d20cd-a596-7470-af5c-f8cb87df4926', 'app_profile_permissions', '019d20cd-a78d-7b9b-91a2-9a6c413e7900', 'app_profile_grants', '019d20cd-a9f5-7dee-91de-3981fae24b0b', 'app_profile_definition_grants', 1, NULL, '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-80a0-741c-8107-a97b9611df53', '019d20cd-87bf-7b47-9abb-d3bb899195af', 'app'),
  ('019d20cd-d35a-76c5-8b89-816117f69ee6', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a115-7835-b894-11934151e604', '019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', '019d20cd-d37d-79b1-92fd-60ff188e3ca5', 'org_profiles', '019d20cd-d73c-7996-87cc-13a2c48284e0', 'org_profile_permissions', '019d20cd-d984-7829-b9e6-5ce0a9dfe279', 'org_profile_grants', '019d20cd-dc9a-73c2-b6c6-e8013af84094', 'org_profile_definition_grants', 2, '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-7a20-7176-823e-cca436cf06f3', '019d20cd-b539-79a4-90d6-42d1c5454329', '019d20cd-bc99-7c6f-b5d8-f1f70077a3a0', 'org');


SET session_replication_role TO DEFAULT;


