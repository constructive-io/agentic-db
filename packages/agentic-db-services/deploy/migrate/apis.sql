-- Deploy: migrate/apis
-- made with <3 @ constructive.io

-- requires: migrate/domains


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

INSERT INTO services_public.apis (
  id,
  database_id,
  name,
  is_public,
  role_name,
  anon_role
) VALUES
  ('fe68c421-9406-46cb-86a6-f0febfc99eca', 'b46c93b1-cb18-9e9f-3288-850e3049f021', 'app', true, 'authenticated', 'anonymous');


SET session_replication_role TO DEFAULT;


