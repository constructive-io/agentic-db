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
  ('019d3daa-ff30-7bd9-b1aa-e305ad93a522', '019d3daa-fe1f-718c-ac17-5692dc771810', NULL, '019d3dab-001d-757e-9b9d-48c6a3955e2d', 'localhost', 'public-agentic-db-1774856107579'),
  ('019d3daa-ff31-76e9-8eb8-b622a6c6bf8a', '019d3daa-fe1f-718c-ac17-5692dc771810', NULL, '019d3dab-001e-7cc8-bc88-8097db9825f7', 'localhost', 'admin-agentic-db-1774856107579'),
  ('019d3daa-ff31-79f0-92cf-35baedef0685', '019d3daa-fe1f-718c-ac17-5692dc771810', NULL, '019d3dab-001f-7466-8073-6937cff1218f', 'localhost', 'private-agentic-db-1774856107579'),
  ('019d3daa-ff31-7d4e-9770-0710f93536c7', '019d3daa-fe1f-718c-ac17-5692dc771810', NULL, '019d3dab-001f-7799-bc3b-477331d9ae95', 'localhost', 'auth-agentic-db-1774856107579'),
  ('019d3daa-ff32-7042-9bb7-344d5b9e42e5', '019d3daa-fe1f-718c-ac17-5692dc771810', NULL, '019d3dab-001f-7f21-80b0-136b869971e2', 'localhost', 'app-public-agentic-db-1774856107579');


SET session_replication_role TO DEFAULT;


