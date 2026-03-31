-- Deploy: migrate/membership_types_module
-- made with <3 @ constructive.io

-- requires: migrate/hierarchy_module


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

INSERT INTO metaschema_modules_public.membership_types_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d416f-3c9b-7b3a-ac74-bb5afa0fbfc2', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3c9c-7189-bb0c-e43871321173', '019d416f-3d39-7b29-b2b9-1ef56f69b0eb', 'membership_types');


SET session_replication_role TO DEFAULT;


