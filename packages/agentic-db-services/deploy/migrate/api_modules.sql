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
  ('4d880ec8-1d53-7b48-2582-087de3882745', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '6069ac05-4eab-5185-4d87-402abf92aa54', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('55c4fe95-a178-0d9f-9519-6306d498b952', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'afbbb895-6dff-9686-aa52-4739a6d6b252', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('660b45b1-3cfb-3820-e102-139f25bd1dab', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', '07bdd370-45d7-8bab-6c26-26fe3627db2b', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}'),
  ('e39350a9-ca1c-5190-7ca5-f5ea105a2600', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'e0e16f38-1c16-2921-39fa-f481233a9ba1', 'rls_module', '{"role_schema":"agentic_db_auth_public","authenticate":"authenticate","current_role":"current_user","current_role_id":"current_user_id","current_ip_address":"current_ip_address","current_user_agent":"current_user_agent","authenticate_schema":"agentic_db_auth_private","authenticate_strict":"authenticate_strict"}');


SET session_replication_role TO DEFAULT;


