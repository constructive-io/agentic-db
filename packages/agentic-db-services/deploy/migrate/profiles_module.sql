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
  ('019d416f-6490-77a5-9022-f711d9af9726', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6491-702b-967e-ba6919a19cc1', '019d416f-6539-7d5e-a575-aee6f3fc9406', '019d416f-65f9-7723-9f8c-ced36ee8f563', 'app_profiles', '019d416f-6922-79f5-845b-74a568d2dffe', 'app_profile_permissions', '019d416f-6b51-7f0c-a442-a5b35f3bd85b', 'app_profile_grants', '019d416f-6e1e-7531-a42f-cd0d2f2f449e', 'app_profile_definition_grants', 1, NULL, '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-404c-7ccb-b3ea-38f77868b961', '019d416f-487f-7c67-bdf3-efaf8ad26205', 'app'),
  ('019d416f-9b18-735f-85e2-d6539011dffb', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-6491-702b-967e-ba6919a19cc1', '019d416f-6539-7d5e-a575-aee6f3fc9406', '019d416f-9be2-779a-9aab-5838b07813cd', 'org_profiles', '019d416f-9fb2-74cd-bedd-d1fdf554ef75', 'org_profile_permissions', '019d416f-a1f9-7da7-96fd-76efd05fe465', 'org_profile_grants', '019d416f-a52f-777a-91e2-78be94f29352', 'org_profile_definition_grants', 2, '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-384a-79e2-9379-99ca3460e274', '019d416f-7a66-7675-8c75-d850aa4da6c5', '019d416f-83b9-75bd-a70f-cf6094051c92', 'org');


SET session_replication_role TO DEFAULT;


