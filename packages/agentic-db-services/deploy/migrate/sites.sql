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
  ('67e4cf0b-b713-e767-f833-0f82c71b76d7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'Agentic Db 1774818387123', 'Application powered by Agentic Db 1774818387123', '{"url":"https://constructive.io/og_image/constructive.jpg","mime":"image/jpeg"}', 'https://constructive.io/favicon.ico', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', '{"url":"https://constructive.io/brand/constructive.png","mime":"image/png"}');


SET session_replication_role TO DEFAULT;


