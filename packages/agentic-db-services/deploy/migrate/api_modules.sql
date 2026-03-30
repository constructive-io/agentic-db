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
  ('019d3dab-9dd1-7df4-95c2-32066a600b99', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-001d-757e-9b9d-48c6a3955e2d', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d3dab-9dd2-74c7-a698-7eb5d513259e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-001e-7cc8-bc88-8097db9825f7', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d3dab-9dd2-759b-99c3-bd8f0267f6b7', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-001f-7799-bc3b-477331d9ae95', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d3dab-9dd2-7626-84ee-20c2adc4082d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-001f-7f21-80b0-136b869971e2', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


