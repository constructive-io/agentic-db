-- Deploy: migrate/default_privilege
-- made with <3 @ constructive.io

-- requires: migrate/trigger_function


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

INSERT INTO metaschema_public.default_privilege (
  id,
  database_id,
  schema_id,
  object_type,
  privilege,
  grantee_name,
  is_grant
) VALUES
  ('22bcdd16-28ee-1e83-617f-b5f0f37a2e53', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'functions', 'ALL', 'anonymous', true),
  ('22def6b8-99f7-4d20-b5f1-449d2357e11a', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'sequences', 'ALL', 'administrator', true),
  ('2db25ef8-2308-df0a-d398-566c4dc6554b', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'sequences', 'ALL', 'authenticated', true),
  ('369c5926-7706-696f-9e37-7904de7a0be8', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'functions', 'ALL', 'authenticated', true),
  ('5c4d8e93-5053-7562-6dc3-36761d2bff69', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'tables', 'ALL', 'administrator', true),
  ('7f586f42-12ac-9a47-fdb0-988d5008be77', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'functions', 'ALL', 'anonymous', true),
  ('816e118d-e58a-cf8e-0d85-d934017ea947', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'tables', 'ALL', 'administrator', true),
  ('8dc071dc-145e-25c3-438c-0311a808a2cc', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'functions', 'ALL', 'administrator', true),
  ('a0d65d65-6679-2d74-9e40-ce2b04717e71', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'sequences', 'ALL', 'administrator', true),
  ('b4bbe4f0-77af-e87f-f8ea-b4ada572625c', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'sequences', 'ALL', 'authenticated', true),
  ('b4d83a64-0a89-dabb-3d4c-50bf8f820e23', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '1de16531-3dee-8f11-240c-6c0ade1b5dd8', 'functions', 'ALL', 'administrator', true),
  ('c30ee511-d095-b7fd-6efa-01ab428b8299', '65a856dc-b301-12f0-d108-9c49d8b99bf0', '7b1989bc-913d-a3c6-f9c9-3a2401c53d5a', 'functions', 'ALL', 'authenticated', true);


SET session_replication_role TO DEFAULT;


