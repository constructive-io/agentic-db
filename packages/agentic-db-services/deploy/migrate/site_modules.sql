-- Deploy: migrate/site_modules
-- made with <3 @ constructive.io

-- requires: migrate/apps


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

INSERT INTO services_public.site_modules (
  id,
  database_id,
  site_id,
  name,
  data
) VALUES
  ('019d1736-5a8b-76aa-918d-556e4a5c28cc', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a8a-77e8-b070-344d333a787d', 'legal_terms_module', '{"site":{"www":"constructive.io","host":"app.constructive.io","siteUrl":"https://app.constructive.io"},"emails":{"abuse":"abuse@constructive.io","hello":"hello@constructive.io","legal":"legal@constructive.io","privacy":"privacy@constructive.io","support":"support@constructive.io","copyright":"copyright@constructive.io","arbitrationOptOut":"arbitration-opt-out@constructive.io"},"company":{"addr":["28 Geary","STE 650 #2503","San Francisco CA 94108"],"name":"Interweb, Inc.","nick":"Agentic_Db","website":"https://constructive.io/","legalState":"California","legalCounty":"San Francisco"}}'),
  ('019d1737-0b87-7138-a4c1-0bc72c1786e0', '019d1736-587a-73df-addd-59801f8d68ca', '019d1736-5a8a-77e8-b070-344d333a787d', 'user_auth_module', '{"sign_in":"sign_in","sign_up":"sign_up","sign_out":"sign_out","auth_schema":"agentic_db_auth_public","set_password":"set_password","verify_email":"verify_email","check_password":"check_password","reset_password":"reset_password","forgot_password":"forgot_password","verify_password":"verify_password","send_verification_email":"send_verification_email"}');


SET session_replication_role TO DEFAULT;


