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
  ('019d1dbf-d915-76cf-9496-c125deba3817', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', NULL, '019d1dbf-da0f-742b-bbfd-50c76f1a7282', 'localhost', 'public-agentic-db-1774320604378'),
  ('019d1dbf-d915-7dca-b9bf-bee1c088f50d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', NULL, '019d1dbf-da10-7327-9f94-5bd9fec62b8f', 'localhost', 'admin-agentic-db-1774320604378'),
  ('019d1dbf-d916-70a8-93de-5bd94ce3589a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', NULL, '019d1dbf-da10-7aec-976f-d381394c44c4', 'localhost', 'private-agentic-db-1774320604378'),
  ('019d1dbf-d916-7383-a552-5e136f6350e4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', NULL, '019d1dbf-da10-7dcc-a85e-789869fd3615', 'localhost', 'auth-agentic-db-1774320604378'),
  ('019d1dbf-d916-7618-a4f4-4aaf83f26577', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', NULL, '019d1dbf-da11-754e-acc8-6f81717e01a5', 'localhost', 'app-public-agentic-db-1774320604378');


SET session_replication_role TO DEFAULT;


