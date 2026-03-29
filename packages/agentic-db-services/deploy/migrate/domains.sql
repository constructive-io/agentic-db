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
  ('1ba0e1e2-ab8e-a3a8-0f66-0e1e8ee322e1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', NULL, 'db6d695b-2875-6cb2-5045-718fb4acf97c', 'localhost', 'private-agentic-db-1774815178395'),
  ('2c670c66-e492-d123-f522-5f3f7e73e6d0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', NULL, '6069ac05-4eab-5185-4d87-402abf92aa54', 'localhost', 'auth-agentic-db-1774815178395'),
  ('85a6a505-b859-7c0c-3e92-86632a41d717', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', NULL, 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'localhost', 'public-agentic-db-1774815178395'),
  ('985842cc-7a56-5e4a-b949-4a32f44ebbda', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', NULL, 'afbbb895-6dff-9686-aa52-4739a6d6b252', 'localhost', 'admin-agentic-db-1774815178395'),
  ('bdca23f9-9f2d-fea0-5f0b-75d8027e23d0', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', NULL, '07bdd370-45d7-8bab-6c26-26fe3627db2b', 'localhost', 'app-public-agentic-db-1774815178395');


SET session_replication_role TO DEFAULT;


