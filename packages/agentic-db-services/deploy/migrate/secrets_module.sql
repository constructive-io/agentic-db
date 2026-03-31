-- Deploy: migrate/secrets_module
-- made with <3 @ constructive.io

-- requires: migrate/sessions_module


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

INSERT INTO metaschema_modules_public.secrets_module (
  id,
  database_id,
  schema_id,
  table_id,
  table_name
) VALUES
  ('019d416f-cc1b-7d3c-a908-8e10f2f47f84', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-cc1c-735a-a68f-a9336da8ec25', '019d416f-ccf3-7839-acc6-587351bf7c12', 'secrets');


SET session_replication_role TO DEFAULT;


