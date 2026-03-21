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
  ('019d0ffe-4ec3-77a1-bd5b-f333553107d4', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', NULL, '019d0ffe-4ff2-72b5-b8f1-4f6a3365f133', 'localhost', 'public-agentic-db-1774089817347'),
  ('019d0ffe-4ec4-77de-98ce-da5bce1736f2', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', NULL, '019d0ffe-4ff4-7679-ad54-fb62c1086ceb', 'localhost', 'admin-agentic-db-1774089817347'),
  ('019d0ffe-4ec4-7cc5-8b16-5450ee76cc2b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', NULL, '019d0ffe-4ff4-7ff9-b08d-e9ff3f51d6cf', 'localhost', 'private-agentic-db-1774089817347'),
  ('019d0ffe-4ec5-7082-b0b6-f6c33fe6041f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', NULL, '019d0ffe-4ff5-7302-b85c-2b116c4794e7', 'localhost', 'auth-agentic-db-1774089817347'),
  ('019d0ffe-4ec5-7381-8975-b22e15855c36', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', NULL, '019d0ffe-4ff5-7a58-89d1-af6992861560', 'localhost', 'app-public-agentic-db-1774089817347');


SET session_replication_role TO DEFAULT;


