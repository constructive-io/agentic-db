-- Deploy: migrate/users_module
-- made with <3 @ constructive.io

-- requires: migrate/levels_module


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

INSERT INTO metaschema_modules_public.users_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name,
  type_table_id,
  type_table_name
) VALUES
  ('9976fa7c-baf6-4db4-9f00-58f10b0169bd', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'a008cadd-c4c5-4c88-4033-6c9fd5982ee3', 'a0082485-cf01-4c72-8c4f-76422cceded1', 'users', 'a00827a5-3c55-495f-66bb-9627f0752868', 'role_types');


SET session_replication_role TO DEFAULT;


