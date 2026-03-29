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
  ('019d37ba-54e1-733a-aa2c-daaaf683f460', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b70f-7ab3-b34d-0b1f07824ee2', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d37ba-54e1-7790-84e0-599037cb8763', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b711-7e8b-b85a-87de3b617e45', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d37ba-54e1-7854-b94e-4cab0342e435', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b712-7afd-846a-e9a30739821a', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('019d37ba-54e1-78da-8e15-ab56ce19bf98', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', '019d37b9-b713-7142-b8cd-f16eb92e797f', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


