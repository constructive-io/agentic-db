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
  ('019d19cf-034b-77e9-ad63-37114d66ee38', '019d19cf-0211-7ea0-a1e2-49c8524221ad', NULL, '019d19cf-045d-7443-8616-b4e079c4cdc0', 'localhost', 'public-agentic-db-1774254489346'),
  ('019d19cf-034c-706e-b782-33873a20d5ca', '019d19cf-0211-7ea0-a1e2-49c8524221ad', NULL, '019d19cf-045e-7683-8310-ac08596f1673', 'localhost', 'admin-agentic-db-1774254489346'),
  ('019d19cf-034c-73e8-8956-c4d432710ef6', '019d19cf-0211-7ea0-a1e2-49c8524221ad', NULL, '019d19cf-045e-7f3e-b09b-7d4125df653f', 'localhost', 'private-agentic-db-1774254489346'),
  ('019d19cf-034c-776c-a644-bd5188ea2e51', '019d19cf-0211-7ea0-a1e2-49c8524221ad', NULL, '019d19cf-045f-7351-b4d9-62f65521448d', 'localhost', 'auth-agentic-db-1774254489346'),
  ('019d19cf-034c-7b45-ad2d-ae7b711af9d3', '019d19cf-0211-7ea0-a1e2-49c8524221ad', NULL, '019d19cf-045f-7b45-bcc5-bd2d83fcbd75', 'localhost', 'app-public-agentic-db-1774254489346');


SET session_replication_role TO DEFAULT;


