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
  ('019d2727-6fd3-748f-aed0-035573ff79b8', '019d2727-6ebb-7f47-9b5c-037b66e19618', NULL, '019d2727-70c7-7587-975c-56e8959922fc', 'localhost', 'public-agentic-db-1774478385595'),
  ('019d2727-6fd3-7ae4-981f-3ddd7d62a3c4', '019d2727-6ebb-7f47-9b5c-037b66e19618', NULL, '019d2727-70c8-74ee-81f9-16bac0da7a2e', 'localhost', 'admin-agentic-db-1774478385595'),
  ('019d2727-6fd3-7df7-9fd2-456a949f0b3b', '019d2727-6ebb-7f47-9b5c-037b66e19618', NULL, '019d2727-70c8-7c03-8a53-fabc6362b017', 'localhost', 'private-agentic-db-1774478385595'),
  ('019d2727-6fd4-7214-bc85-f145f0f0d05d', '019d2727-6ebb-7f47-9b5c-037b66e19618', NULL, '019d2727-70c8-7f2e-b52f-a5a714229794', 'localhost', 'auth-agentic-db-1774478385595'),
  ('019d2727-6fd4-7596-ab13-c50ab970e8ee', '019d2727-6ebb-7f47-9b5c-037b66e19618', NULL, '019d2727-70c9-7697-8c29-c426e73709c9', 'localhost', 'app-public-agentic-db-1774478385595');


SET session_replication_role TO DEFAULT;


