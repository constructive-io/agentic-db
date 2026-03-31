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
  ('019d42ff-c9ca-795a-a8dc-5d25181adf49', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9cb-7479-8e4d-02c1f0985a66', '019d42ff-ca62-77a0-ab97-b8d784c420dc', 'users', '019d42ff-cc06-75d4-b43d-57a43783ee7e', 'role_types');


SET session_replication_role TO DEFAULT;


