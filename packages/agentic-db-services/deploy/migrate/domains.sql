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
  ('019d21f8-21af-7677-99df-fc1948d634af', '019d21f8-208e-7d66-9eaa-e762489889c1', NULL, '019d21f8-22a3-7f6c-8835-6d4f9bf3bd07', 'localhost', 'public-agentic-db-1774391399843'),
  ('019d21f8-21b0-7356-bd47-ec79bbb12de6', '019d21f8-208e-7d66-9eaa-e762489889c1', NULL, '019d21f8-22a5-79fd-97f2-6353b66f4b5d', 'localhost', 'admin-agentic-db-1774391399843'),
  ('019d21f8-21b0-769d-9a23-ea7a3cba9606', '019d21f8-208e-7d66-9eaa-e762489889c1', NULL, '019d21f8-22a6-70f3-95c4-f381abfc1243', 'localhost', 'private-agentic-db-1774391399843'),
  ('019d21f8-21b0-7a45-ae40-116a2c0b32d4', '019d21f8-208e-7d66-9eaa-e762489889c1', NULL, '019d21f8-22a6-73df-9bc9-c92da843e52a', 'localhost', 'auth-agentic-db-1774391399843'),
  ('019d21f8-21b0-7d9c-b02e-e775ad505526', '019d21f8-208e-7d66-9eaa-e762489889c1', NULL, '019d21f8-22a6-7af4-81e5-d7bff892155f', 'localhost', 'app-public-agentic-db-1774391399843');


SET session_replication_role TO DEFAULT;


