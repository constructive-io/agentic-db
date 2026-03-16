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
  ('fd224015-9d98-4178-a5d4-a6a9040a5d12', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', NULL, 'cb1b477d-1947-4d2e-a6f9-c6bab48baec9', 'localhost', 'public-agent-os-1773655140238'),
  ('8039df28-7a52-4874-bcea-945c266a38ce', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', NULL, '4b3adbc4-62b2-49c5-b315-0f186dad3282', 'localhost', 'admin-agent-os-1773655140238'),
  ('34316295-18dc-4148-9b82-d960442e9979', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', NULL, '384cd3a3-3268-4289-bc35-3c3535238883', 'localhost', 'private-agent-os-1773655140238'),
  ('114fcc60-af60-4702-9685-37335d73013b', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', NULL, '9e1460cd-8403-41bd-8335-8f4f0e170d8e', 'localhost', 'auth-agent-os-1773655140238'),
  ('19a5a6f2-c46b-4a1c-9d59-3db954b4f156', '569edc6d-3f84-4a51-a145-e5d82d9c06d3', NULL, '609e6dda-a463-4150-88e9-edd33a661307', 'localhost', 'app-public-agent-os-1773655140238');


SET session_replication_role TO DEFAULT;


