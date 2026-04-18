-- Deploy: migrate/api_schemas
-- made with <3 @ constructive.io

-- requires: migrate/apis


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

INSERT INTO services_public.api_schemas (
  id,
  database_id,
  schema_id,
  api_id
) VALUES
  ('019d9f77-1a29-74e7-b366-2453ea6ee88a', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'bbc7ac5a-db12-efa7-4854-69b4dec0b769', 'fe68c421-9406-46cb-86a6-f0febfc99eca');


SET session_replication_role TO DEFAULT;


