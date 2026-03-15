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
  ('66264bc7-8d84-4573-b9ad-4c2214ef9f6c', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'b5602560-c7e7-4bd4-afc8-8c4925abf751', 'legal_terms_module', '{"site":{"www":"constructive.io","host":"app.constructive.io","siteUrl":"https://app.constructive.io"},"emails":{"abuse":"abuse@constructive.io","hello":"hello@constructive.io","legal":"legal@constructive.io","privacy":"privacy@constructive.io","support":"support@constructive.io","copyright":"copyright@constructive.io","arbitrationOptOut":"arbitration-opt-out@constructive.io"},"company":{"addr":["28 Geary","STE 650 #2503","San Francisco CA 94108"],"name":"Interweb, Inc.","nick":"Agent Os 1773554871345","website":"https://constructive.io/","legalState":"California","legalCounty":"San Francisco"}}'),
  ('7103e290-97fc-4caa-b3d3-3f0c3578d3c6', '9085366f-6c6f-49b7-a4c9-c82d816fded5', 'b5602560-c7e7-4bd4-afc8-8c4925abf751', 'user_auth_module', '{"sign_in":"sign_in","sign_up":"sign_up","sign_out":"sign_out","auth_schema":"agent_db_auth_public","set_password":"set_password","verify_email":"verify_email","check_password":"check_password","reset_password":"reset_password","forgot_password":"forgot_password","verify_password":"verify_password","send_verification_email":"send_verification_email"}');


SET session_replication_role TO DEFAULT;


