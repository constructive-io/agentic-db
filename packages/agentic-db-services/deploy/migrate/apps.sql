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
  ('019d37b9-b720-7e0b-bdaf-4580a5595357', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b71c-79a7-8b4c-77663e405898', 'Agentic Db 1774756410409', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', NULL, NULL, NULL, NULL);


SET session_replication_role TO DEFAULT;


