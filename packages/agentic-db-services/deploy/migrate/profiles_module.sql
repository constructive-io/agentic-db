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
  ('019d2727-977e-71f9-8105-783e788fd300', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-977e-7943-a27c-99bb78bbc5b5', '019d2727-980e-7579-a498-8753fe8b63e3', '019d2727-98b7-7254-9da7-b45e49101b8a', 'app_profiles', '019d2727-9b59-7518-9790-37fb9759732f', 'app_profile_permissions', '019d2727-9d14-7c71-acc5-73b926444825', 'app_profile_grants', '019d2727-9f33-79da-89fe-738b45309a17', 'app_profile_definition_grants', 1, NULL, '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7716-776b-ac97-df47ca6b3867', '019d2727-801a-7ff9-86ec-a8861bee9f8d', 'app'),
  ('019d2727-cd64-771c-860f-f782d48cc491', '019d2727-6ebb-7f47-9b5c-037b66e19618', '019d2727-977e-7943-a27c-99bb78bbc5b5', '019d2727-980e-7579-a498-8753fe8b63e3', '019d2727-d0b2-7c6e-91b6-021cc634e196', 'org_profiles', '019d2727-d427-7cb2-b5fe-007213cc2e67', 'org_profile_permissions', '019d2727-d631-72d0-bcb4-6b6077c2fcb7', 'org_profile_grants', '019d2727-d8fc-7699-a09b-2f8037f4296a', 'org_profile_definition_grants', 2, '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-7153-7bae-b8ec-6f398ecf0b75', '019d2727-abdb-7e45-9524-98962317e78b', '019d2727-b831-70d7-8829-5261a0a046df', 'org');


SET session_replication_role TO DEFAULT;


