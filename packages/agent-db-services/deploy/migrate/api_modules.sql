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
  ('8d9fee9b-603a-4dd6-bc91-df474ed2ab55', '9085366f-6c6f-49b7-a4c9-c82d816fded5', '48e35c24-3f44-479e-87ee-70bf57c7e3f2', 'rls_module', '{"role_schema":"agent_db_services_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_services_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('6cb060e1-e507-4e6f-a935-c1760239ded9', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d', 'rls_module', '{"role_schema":"agent_db_services_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_services_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('7f615a3e-01b8-461d-9f3d-8353db8c888f', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'd3334c11-97f8-4553-ab31-00854a259dd1', 'rls_module', '{"role_schema":"agent_db_services_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_services_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('4921792d-fe5a-488d-a0fe-2f2a0d808811', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'ca5fd55a-d91b-4152-99ad-beedf645560f', 'rls_module', '{"role_schema":"agent_db_services_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agent_db_services_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


