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
  ('019d19cf-0855-7a85-aa3d-44a2035bbbae', '019d19cf-0211-7ea0-a1e2-49c8524221ad', '019d19cf-0856-718d-a159-1e8137d9e65b', '019d19cf-08de-7a3b-bca3-740d946c5b47', 'membership_types');


SET session_replication_role TO DEFAULT;


