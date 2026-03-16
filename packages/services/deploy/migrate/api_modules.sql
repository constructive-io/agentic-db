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
  ('03389926-c8aa-47c8-b896-d9825418d25a', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9', 'rls_module', '{"role_schema":"agent_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('1ed26395-a7fb-438c-8953-e83d8a3bfc52', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', '4b3adbc4-62b2-49c5-b315-0f186dad3282', 'rls_module', '{"role_schema":"agent_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('d92b826a-7e88-4a57-baff-c786a2c1b615', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', '9e1460cd-8403-41bd-8335-8f4f0e170d8e', 'rls_module', '{"role_schema":"agent_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('6cabb106-da60-4372-a4b5-d0ce82ce537c', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', '609e6dda-a463-4150-88e9-edd33a661307', 'rls_module', '{"role_schema":"agent_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


