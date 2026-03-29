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
  ('019d37b9-b606-75d4-8709-ec76627cef5e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', NULL, '019d37b9-b70f-7ab3-b34d-0b1f07824ee2', 'localhost', 'public-agentic-db-1774756410409'),
  ('019d37b9-b607-7636-b57e-3aa39985d6e6', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', NULL, '019d37b9-b711-7e8b-b85a-87de3b617e45', 'localhost', 'admin-agentic-db-1774756410409'),
  ('019d37b9-b607-7ab7-b0c1-9ae3127d8377', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', NULL, '019d37b9-b712-7800-ab30-963d5e8b9e0c', 'localhost', 'private-agentic-db-1774756410409'),
  ('019d37b9-b607-7de1-8508-f4c370dfb3de', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', NULL, '019d37b9-b712-7afd-846a-e9a30739821a', 'localhost', 'auth-agentic-db-1774756410409'),
  ('019d37b9-b608-7142-8da5-69611d1540b2', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', NULL, '019d37b9-b713-7142-b8cd-f16eb92e797f', 'localhost', 'app-public-agentic-db-1774756410409');


SET session_replication_role TO DEFAULT;


