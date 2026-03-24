-- Deploy: migrate/api_modules
-- made with <3 @ constructive.io

-- requires: migrate/site_themes


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

INSERT INTO services_public.api_modules (
  id,
  database_id,
  api_id,
  name,
  data
) VALUES
  ('019d1dc0-8773-73bd-80c2-42617b783f73', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da0f-742b-bbfd-50c76f1a7282', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1dc0-8773-783c-a171-9fd5ffe09bec', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da10-7327-9f94-5bd9fec62b8f', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1dc0-8773-78ed-a427-a210d2a4c113', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da10-7dcc-a85e-789869fd3615', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1dc0-8773-796e-91b3-63dd81985b85', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da11-754e-acc8-6f81717e01a5', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


