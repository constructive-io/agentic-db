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
  ('019d416f-3779-7242-bfc5-0004fd60eceb', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3775-7e02-84a5-289db372eaa9', '{"colors":["#66d9ff","#91d5ee","#ffffff","#33CCFF"],"primary":"#01A1FF","background":"#f2fafd"}');


SET session_replication_role TO DEFAULT;


