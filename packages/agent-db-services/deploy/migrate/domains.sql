-- Deploy: migrate/domains
-- made with <3 @ constructive.io

-- requires: migrate/default_privilege


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

INSERT INTO services_public.domains (
  id,
  database_id,
  site_id,
  api_id,
  domain,
  subdomain
) VALUES
  ('4a8577bc-c87c-4282-97cc-c4bfa3fbe06e', '9085366f-6c6f-49b7-a4c9-c82d816fded5', NULL, '48e35c24-3f44-479e-87ee-70bf57c7e3f2', 'localhost', 'public-agent-os-1773554871345'),
  ('dec91e3d-7968-45a4-912e-21002f8ce56b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', NULL, 'bd9f2c10-c3a8-416f-8e40-2c7e55c3402d', 'localhost', 'admin-agent-os-1773554871345'),
  ('6cef9f61-0aed-45fe-8c20-40b89848b9f7', '9085366f-6c6f-49b7-a4c9-c82d816fded5', NULL, '34e804ab-4d43-41ed-b5e9-27616885169e', 'localhost', 'private-agent-os-1773554871345'),
  ('70a0df1e-45ce-4983-a7a6-4f03678c3d4b', '9085366f-6c6f-49b7-a4c9-c82d816fded5', NULL, 'd3334c11-97f8-4553-ab31-00854a259dd1', 'localhost', 'auth-agent-os-1773554871345'),
  ('4d8cbe92-61ab-4730-a594-34302c092725', '9085366f-6c6f-49b7-a4c9-c82d816fded5', NULL, 'ca5fd55a-d91b-4152-99ad-beedf645560f', 'localhost', 'app-public-agent-os-1773554871345');


SET session_replication_role TO DEFAULT;


