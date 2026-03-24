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
  ('019d20cd-7981-76d4-a7ec-e02eadab7f7d', '019d20cd-7722-776e-8fb8-f96db2895639', 'Agentic Db 1774371826238', 'Application powered by Agentic Db 1774371826238', '{"url":"https://constructive.io/og_image/constructive.jpg","mime":"image/jpeg"}', 'https://constructive.io/favicon.ico', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', '{"url":"https://constructive.io/brand/constructive.png","mime":"image/png"}');


SET session_replication_role TO DEFAULT;


