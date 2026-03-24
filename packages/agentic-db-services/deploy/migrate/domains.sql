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
  ('08c461c1-d4b2-733f-6e11-ff86720eb24f', 'fdf8a620-6969-72d5-d89a-ed384259d249', NULL, 'e005449b-7ef7-37df-9c51-2cfec020fa43', 'localhost', 'public-agentic-db-1774339651526'),
  ('36cf6adf-2289-6135-ff7c-82dbe09dceeb', 'fdf8a620-6969-72d5-d89a-ed384259d249', NULL, '9b816881-10d3-41c9-86dd-78473d4334eb', 'localhost', 'admin-agentic-db-1774339651526'),
  ('6705fa8f-801a-0f73-8532-1b6545eb9775', 'fdf8a620-6969-72d5-d89a-ed384259d249', NULL, '16dadbdb-d7c7-6c00-5919-acec849d1544', 'localhost', 'app-public-agentic-db-1774339651526'),
  ('8e88b812-09b9-4bf5-ca83-b1c6fced05b2', 'fdf8a620-6969-72d5-d89a-ed384259d249', NULL, 'a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e', 'localhost', 'auth-agentic-db-1774339651526'),
  ('e3e28012-6b23-749b-7343-ede98362a3c5', 'fdf8a620-6969-72d5-d89a-ed384259d249', NULL, '8f7308b0-c788-f566-4959-59c563e849da', 'localhost', 'private-agentic-db-1774339651526');


SET session_replication_role TO DEFAULT;


