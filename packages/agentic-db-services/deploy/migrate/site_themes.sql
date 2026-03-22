-- Deploy: migrate/site_themes
-- made with <3 @ constructive.io

-- requires: migrate/site_modules


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

INSERT INTO services_public.site_themes (
  id,
  database_id,
  site_id,
  theme
) VALUES
  ('019d13bc-212b-72d3-b9c4-f4742ed1dd7b', '019d13bc-1f23-7305-9068-cef2ccaf4226', '019d13bc-2129-7cd0-8c63-cf0483ee6292', '{"colors":["#66d9ff","#91d5ee","#ffffff","#33CCFF"],"primary":"#01A1FF","background":"#f2fafd"}');


SET session_replication_role TO DEFAULT;


