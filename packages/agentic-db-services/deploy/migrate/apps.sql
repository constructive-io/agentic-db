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
  ('019d3dab-0028-7f93-9ab3-b87c44bae78c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0026-7b89-864f-402c55f7eff5', 'Agentic Db 1774856107579', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', NULL, NULL, NULL, NULL);


SET session_replication_role TO DEFAULT;


