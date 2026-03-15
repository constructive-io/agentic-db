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
  ('b5602560-c7e7-4bd4-afc8-8c4925abf751', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'Agent Os 1773554871345', 'Application powered by Agent Os 1773554871345', '{"url":"https://constructive.io/og_image/constructive.jpg","mime":"image/jpeg"}', 'https://constructive.io/favicon.ico', '{"url":"https://constructive.io/brand/constructive.svg","mime":"image/svg+xml"}', '{"url":"https://constructive.io/brand/constructive.png","mime":"image/png"}');


SET session_replication_role TO DEFAULT;


