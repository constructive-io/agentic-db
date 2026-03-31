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
  ('019d416f-3777-7a93-a238-c3111c1b3464', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3775-7e02-84a5-289db372eaa9', 'legal_terms_module', '{"site":{"www":"constructive.io","host":"app.constructive.io","siteUrl":"https://app.constructive.io"},"emails":{"abuse":"abuse@constructive.io","hello":"hello@constructive.io","legal":"legal@constructive.io","privacy":"privacy@constructive.io","support":"support@constructive.io","copyright":"copyright@constructive.io","arbitrationOptOut":"arbitration-opt-out@constructive.io"},"company":{"addr":["28 Geary","STE 650 #2503","San Francisco CA 94108"],"name":"Interweb, Inc.","nick":"Agentic Db 1774919295152","website":"https://constructive.io/","legalState":"California","legalCounty":"San Francisco"}}'),
  ('019d4170-13dd-7278-b780-a990dc7bbccb', '019d416f-3253-7543-a058-30ea5a6b7e37', '019d416f-3775-7e02-84a5-289db372eaa9', 'user_auth_module', '{"sign_in":"sign_in","sign_up":"sign_up","sign_out":"sign_out","auth_schema":"agentic_db_auth_public","set_password":"set_password","verify_email":"verify_email","check_password":"check_password","reset_password":"reset_password","forgot_password":"forgot_password","verify_password":"verify_password","send_verification_email":"send_verification_email"}');


SET session_replication_role TO DEFAULT;


