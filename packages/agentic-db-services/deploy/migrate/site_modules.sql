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
  ('019d42ff-c9c5-7604-90e1-c031a01be98f', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9c4-7776-a161-2698e51e2ce7', 'legal_terms_module', '{"site":{"www":"constructive.io","host":"app.constructive.io","siteUrl":"https://app.constructive.io"},"emails":{"abuse":"abuse@constructive.io","hello":"hello@constructive.io","legal":"legal@constructive.io","privacy":"privacy@constructive.io","support":"support@constructive.io","copyright":"copyright@constructive.io","arbitrationOptOut":"arbitration-opt-out@constructive.io"},"company":{"addr":["28 Geary","STE 650 #2503","San Francisco CA 94108"],"name":"Interweb, Inc.","nick":"Agentic Db 1774945548894","website":"https://constructive.io/","legalState":"California","legalCounty":"San Francisco"}}'),
  ('019d4300-9b75-745f-ad21-708730c4c00a', '019d42ff-c75a-7c43-be39-ef7a74b280f4', '019d42ff-c9c4-7776-a161-2698e51e2ce7', 'user_auth_module', '{"sign_in":"sign_in","sign_up":"sign_up","sign_out":"sign_out","auth_schema":"agentic_db_auth_public","set_password":"set_password","verify_email":"verify_email","check_password":"check_password","reset_password":"reset_password","forgot_password":"forgot_password","verify_password":"verify_password","send_verification_email":"send_verification_email"}');


SET session_replication_role TO DEFAULT;


