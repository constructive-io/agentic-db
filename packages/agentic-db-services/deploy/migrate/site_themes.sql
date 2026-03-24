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
  ('f54aee74-d138-5b7f-1eef-941eb143856d', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7c1959c1-e78f-65d1-7937-723330f6d963', '{"colors":["#66d9ff","#91d5ee","#ffffff","#33CCFF"],"primary":"#01A1FF","background":"#f2fafd"}');


SET session_replication_role TO DEFAULT;


