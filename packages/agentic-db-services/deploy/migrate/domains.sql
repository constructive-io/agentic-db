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
  ('019d3d14-e5e9-7d83-bd29-b327843ffb55', '019d3d14-e4d9-7da9-8899-3e3a337a3080', NULL, '019d3d14-e6cf-792d-840d-e599d57dedef', 'localhost', 'public-agentic_db'),
  ('019d3d14-e5ea-7cc2-83b1-08143b6b60d7', '019d3d14-e4d9-7da9-8899-3e3a337a3080', NULL, '019d3d14-e6d1-7baf-8f49-c00be47ccd9d', 'localhost', 'admin-agentic_db'),
  ('019d3d14-e5ea-7fa3-96ac-fb7788812159', '019d3d14-e4d9-7da9-8899-3e3a337a3080', NULL, '019d3d14-e6d2-7270-97ea-e623e7518fe6', 'localhost', 'private-agentic_db'),
  ('019d3d14-e5eb-7253-aa9c-35fb7e3932c0', '019d3d14-e4d9-7da9-8899-3e3a337a3080', NULL, '019d3d14-e6d2-7565-ab29-43fe02abb602', 'localhost', 'auth-agentic_db'),
  ('019d3d14-e5eb-752b-98a4-5c2f88d778cb', '019d3d14-e4d9-7da9-8899-3e3a337a3080', NULL, '019d3d14-e6d2-7cc4-b944-e70113c8d4fc', 'localhost', 'app-public-agentic_db');


SET session_replication_role TO DEFAULT;


