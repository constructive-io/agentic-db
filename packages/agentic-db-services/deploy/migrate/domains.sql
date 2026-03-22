-- Deploy: migrate/domains
-- made with <3 @ constructive.io

-- requires: migrate/default_privilege


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

INSERT INTO services_public.domains (
  id,
  database_id,
  site_id,
  api_id,
  domain,
  subdomain
) VALUES
  ('019d130c-ef38-75d7-9750-efcee702e60f', '019d130c-edc8-7abe-b39e-3935c59e44fe', NULL, '019d130c-f086-78d5-8904-2feb194d1093', 'localhost', 'public-agentic-db-1774141103256'),
  ('019d130c-ef38-7e76-9992-100dee568eac', '019d130c-edc8-7abe-b39e-3935c59e44fe', NULL, '019d130c-f087-7ff0-b69a-b0199f9377b6', 'localhost', 'admin-agentic-db-1774141103256'),
  ('019d130c-ef39-7188-b643-a6f178f6dfec', '019d130c-edc8-7abe-b39e-3935c59e44fe', NULL, '019d130c-f088-778a-be12-62ba6c45e42a', 'localhost', 'private-agentic-db-1774141103256'),
  ('019d130c-ef39-7555-a4c3-bec761b285aa', '019d130c-edc8-7abe-b39e-3935c59e44fe', NULL, '019d130c-f088-7ad3-b2da-16c399f2d759', 'localhost', 'auth-agentic-db-1774141103256'),
  ('019d130c-ef39-783c-b662-85b693d702f0', '019d130c-edc8-7abe-b39e-3935c59e44fe', NULL, '019d130c-f089-7154-9a11-55045b5509ac', 'localhost', 'app-public-agentic-db-1774141103256');


SET session_replication_role TO DEFAULT;


