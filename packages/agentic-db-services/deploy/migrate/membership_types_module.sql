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
  ('019d37b9-bb21-708f-960f-06862ae67166', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-bba8-7262-87df-76d88d1eea51', 'membership_types');


SET session_replication_role TO DEFAULT;


