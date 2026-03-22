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
  ('019d1736-e5c1-7e8e-ad85-366d6591a914', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a7f-7138-942c-5cbdb0338d7f', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1736-e5c2-75d2-8ee3-e523ef19f69c', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a81-71c4-8779-a0878491548f', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1736-e5c2-769c-ad07-1c16b54e65d9', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a81-7d92-9cce-10d4617c6246', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d1736-e5c2-7720-801f-d9c916ba0329', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a82-750f-bf4b-b9c3ef7874de', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


