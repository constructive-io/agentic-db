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
  ('019d37b9-b724-7058-994b-162ad987cd94', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b724-7c50-8fc3-1e8ca40b9e53', '019d37b9-b7ad-745d-9c54-c5b0658c3ae4', 'users', '019d37b9-b947-7aba-a621-3a25587c23bc', 'role_types');


SET session_replication_role TO DEFAULT;


