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
  ('019d1795-47d1-75d7-ace0-d937c8bbb982', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', NULL, '019d1795-48c6-754b-a19b-b68b1472e265', 'localhost', 'public-agentic_db'),
  ('019d1795-47d2-70f5-bbf9-968e5568eb01', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', NULL, '019d1795-48c8-7509-865c-9833ee25ab44', 'localhost', 'admin-agentic_db'),
  ('019d1795-47d2-73fb-a575-f85645b22d6b', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', NULL, '019d1795-48c8-7cb1-8cb1-19f4d5d8b61e', 'localhost', 'private-agentic_db'),
  ('019d1795-47d2-76de-ada1-a0cac2d7fa7c', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', NULL, '019d1795-48c8-7f8c-b3bf-38f46c572738', 'localhost', 'auth-agentic_db'),
  ('019d1795-47d2-7a5c-bfa0-e9b4bc6d5301', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', NULL, '019d1795-48c9-761b-877c-2357966aff34', 'localhost', 'app-public-agentic_db');


SET session_replication_role TO DEFAULT;


