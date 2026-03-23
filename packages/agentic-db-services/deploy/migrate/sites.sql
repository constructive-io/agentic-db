-- Deploy: migrate/sites
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

INSERT INTO services_public.sites (
  id,
  database_id,
  title,
  description,
  og_image,
  favicon,
  apple_touch_icon,
  logo
) VALUES
  ('019d19cf-0466-7ddf-8b32-58cfa84b3268', '019d19cf-0211-7ea0-a1e2-49c8524221ad', 'Agentic Db 1774254489346', 'Application powered by Agentic Db 1774254489346', '{"url":"https://constructive.io/og_image/constructive.jpg","mime":"image/jpeg"}', 'https://constructive.io/favicon.ico', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', '{"url":"https://constructive.io/brand/constructive.png","mime":"image/png"}');


SET session_replication_role TO DEFAULT;


