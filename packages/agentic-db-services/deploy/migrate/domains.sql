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
  ('019d20cd-785c-70e6-8a37-3aba586385dd', '019d20cd-7722-776e-8fb8-f96db2895639', NULL, '019d20cd-7972-7897-87e0-e3c551075ba4', 'localhost', 'public-agentic-db-1774371826238'),
  ('019d20cd-785d-740b-b376-ace7ee6cc029', '019d20cd-7722-776e-8fb8-f96db2895639', NULL, '019d20cd-7975-76f3-8971-ac804995c3e9', 'localhost', 'admin-agentic-db-1774371826238'),
  ('019d20cd-785d-778c-afdf-5fc1f5e164d9', '019d20cd-7722-776e-8fb8-f96db2895639', NULL, '019d20cd-7976-72db-ba93-76892471bcdf', 'localhost', 'private-agentic-db-1774371826238'),
  ('019d20cd-785d-7ac1-ae12-69039f78ea9c', '019d20cd-7722-776e-8fb8-f96db2895639', NULL, '019d20cd-7976-7643-afed-385e4084bca4', 'localhost', 'auth-agentic-db-1774371826238'),
  ('019d20cd-785d-7e2f-b3d6-81dd216f1a4d', '019d20cd-7722-776e-8fb8-f96db2895639', NULL, '019d20cd-7977-7071-9757-1cacbcc1879d', 'localhost', 'app-public-agentic-db-1774371826238');


SET session_replication_role TO DEFAULT;


