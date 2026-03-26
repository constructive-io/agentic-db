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
  ('019d2831-62be-751a-917f-b8b5ab33ba75', '019d2831-6080-7e86-a360-21cd48c6ce49', '019d2831-62bb-7f6c-ab0d-b2e195346cdb', 'Agentic Db 1774495814286', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', NULL, NULL, NULL, NULL);


SET session_replication_role TO DEFAULT;


