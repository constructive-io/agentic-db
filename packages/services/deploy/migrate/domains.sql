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
  ('299f4951-3c33-4fc9-9a7b-640950a23b14', '14d9536f-0092-4ddb-87f8-eddad14902bd', NULL, '99fc28da-5127-47e7-8d63-0facfb94af88', 'localhost', 'public-agentic-db-1773691587558'),
  ('3ee35407-737c-4453-98bb-e8ba078d9314', '14d9536f-0092-4ddb-87f8-eddad14902bd', NULL, '01bed430-2ad8-48bb-b309-fb7ec85de28e', 'localhost', 'admin-agentic-db-1773691587558'),
  ('a4212cba-97c0-42e0-93dd-f2e4692f30e2', '14d9536f-0092-4ddb-87f8-eddad14902bd', NULL, '3891d1d1-a5d4-4eeb-8190-3f4284580bac', 'localhost', 'private-agentic-db-1773691587558'),
  ('9acd75ad-3710-43d2-9ad4-2d95a8d02b0b', '14d9536f-0092-4ddb-87f8-eddad14902bd', NULL, 'fcb33a1e-030c-4965-9c52-9ad9f4e4c408', 'localhost', 'auth-agentic-db-1773691587558'),
  ('cb21a56e-7a76-4854-a4b5-eaf3f855d29c', '14d9536f-0092-4ddb-87f8-eddad14902bd', NULL, 'eb7af846-9a04-4f24-8436-7650c519e775', 'localhost', 'app-public-agentic-db-1773691587558');


SET session_replication_role TO DEFAULT;


