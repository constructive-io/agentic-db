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
  ('019d11d9-5930-77ef-9c08-ecb74544b06a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', NULL, '019d11d9-5a42-771c-a432-9a8e4f34b64f', 'localhost', 'public-agentic-db-1774120949709'),
  ('019d11d9-5931-780d-b962-9d05705779fe', '019d11d9-57e6-748d-91f1-8d571d4d7f22', NULL, '019d11d9-5a44-7dcb-8400-cf43a175a45f', 'localhost', 'admin-agentic-db-1774120949709'),
  ('019d11d9-5931-7bf3-8c1b-0762c8952ca7', '019d11d9-57e6-748d-91f1-8d571d4d7f22', NULL, '019d11d9-5a45-7682-8ab8-bc539f3566ff', 'localhost', 'private-agentic-db-1774120949709'),
  ('019d11d9-5932-7140-97cd-350a3455abc9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', NULL, '019d11d9-5a45-7a06-addb-948b85961984', 'localhost', 'auth-agentic-db-1774120949709'),
  ('019d11d9-5932-7631-b810-7e23dc30f5c9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', NULL, '019d11d9-5a46-71b8-8af3-c025f6e35c27', 'localhost', 'app-public-agentic-db-1774120949709');


SET session_replication_role TO DEFAULT;


