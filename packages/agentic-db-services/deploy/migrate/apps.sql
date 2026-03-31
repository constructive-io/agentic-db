-- Deploy: migrate/apps
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

INSERT INTO services_public.apps (
  id,
  database_id,
  site_id,
  name,
  app_image,
  app_store_link,
  app_store_id,
  app_id_prefix,
  play_store_link
) VALUES
  ('019d416f-377a-7594-b918-63400754767b', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3775-7e02-84a5-289db372eaa9', 'Agentic Db 1774919295152', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', NULL, NULL, NULL, NULL);


SET session_replication_role TO DEFAULT;


