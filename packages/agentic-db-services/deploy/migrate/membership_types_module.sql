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
  ('019d3dab-03c6-70a7-ac1a-18580bf39b22', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', '019d3dab-0441-76ef-8983-bd109f44ca00', 'membership_types');


SET session_replication_role TO DEFAULT;


