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
  ('019d4100-4152-748e-962b-bd0699569000', '019d4100-4020-73d6-9854-f8d0aaa616d3', NULL, '019d4100-4262-76cb-8618-ee7da8d931bb', 'localhost', 'public-agentic-db-1774912025215'),
  ('019d4100-4152-7c11-a269-b1e485bb944e', '019d4100-4020-73d6-9854-f8d0aaa616d3', NULL, '019d4100-4263-779c-b5ee-d06cd25d1254', 'localhost', 'admin-agentic-db-1774912025215'),
  ('019d4100-4152-7fde-9068-950624d13add', '019d4100-4020-73d6-9854-f8d0aaa616d3', NULL, '019d4100-4264-70ed-b132-e925e59cb463', 'localhost', 'private-agentic-db-1774912025215'),
  ('019d4100-4153-7342-a64b-d1e6889e2117', '019d4100-4020-73d6-9854-f8d0aaa616d3', NULL, '019d4100-4264-7452-80df-ebc4e2f81bc5', 'localhost', 'auth-agentic-db-1774912025215'),
  ('019d4100-4153-766d-b5de-53446db21c85', '019d4100-4020-73d6-9854-f8d0aaa616d3', NULL, '019d4100-4264-7b93-8a26-f9e8aef4ae3d', 'localhost', 'app-public-agentic-db-1774912025215');


SET session_replication_role TO DEFAULT;


