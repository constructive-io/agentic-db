-- Deploy: migrate/schema
-- made with <3 @ constructive.io

-- requires: migrate/database


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

INSERT INTO metaschema_public.schema (
  id,
  database_id,
  name,
  schema_name,
  description,
  is_public
) VALUES
  ('22a37e39-a81a-1afb-f4dd-d895806b24a5', '2ef50f93-192b-b168-969d-304c8e675e1d', 'users_public', 'agentic_db_users_public', NULL, true),
  ('2a7b615d-ddb5-8955-0458-298a538f5b11', '2ef50f93-192b-b168-969d-304c8e675e1d', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('4b4d3a75-1494-5d8e-33ac-b6aeea6cddb7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('4e508e09-6aa9-6239-ded2-01f8853a87cf', '2ef50f93-192b-b168-969d-304c8e675e1d', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('500b149d-0190-022d-d22a-c7d1190ada62', '2ef50f93-192b-b168-969d-304c8e675e1d', 'status_public', 'agentic_db_status_public', NULL, true),
  ('6fac8c0d-a376-0520-b5a9-4002080cbea9', '2ef50f93-192b-b168-969d-304c8e675e1d', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('7227dbe2-7cb2-59b2-d468-6d25df342903', '2ef50f93-192b-b168-969d-304c8e675e1d', 'app_public', 'agentic_db_app_public', NULL, true),
  ('7367e953-0d70-83a4-a154-cab03c10944e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('73a2c77f-aeee-fb24-2630-e6c96ba888fe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('7a55d5c1-c868-32c1-dfa9-57bcaeb18b16', '2ef50f93-192b-b168-969d-304c8e675e1d', 'app_private', 'agentic_db_app_private', NULL, false),
  ('8f861828-6a40-84ed-57b2-b046272d8ea8', '2ef50f93-192b-b168-969d-304c8e675e1d', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('97c6ad23-c014-16d0-8f3d-8d0be14065fe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'logging_public', 'agentic_db_logging_public', NULL, true),
  ('98ae2e0e-b2fc-f6c8-505c-3aab7d43dfa2', '2ef50f93-192b-b168-969d-304c8e675e1d', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('9ccd1a15-747d-b3dc-6ed2-41691cff035e', '2ef50f93-192b-b168-969d-304c8e675e1d', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('9fbcb405-0a09-1cd9-b7e3-11249644e2c7', '2ef50f93-192b-b168-969d-304c8e675e1d', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('b6d1ba78-d1b4-511d-1a9b-98722c2fbf51', '2ef50f93-192b-b168-969d-304c8e675e1d', 'private', 'agentic_db_private', NULL, false),
  ('c1732592-631e-c160-2f43-7c8679504e8a', '2ef50f93-192b-b168-969d-304c8e675e1d', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('ccbc0a07-ae90-c183-db56-fd41f35affbe', '2ef50f93-192b-b168-969d-304c8e675e1d', 'public', 'agentic_db_public', NULL, true),
  ('cf828ea2-ada6-30d9-9f88-49600033a4a4', '2ef50f93-192b-b168-969d-304c8e675e1d', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('d17fa32f-9906-df6a-43d7-290faf7c818a', '2ef50f93-192b-b168-969d-304c8e675e1d', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('d83cb385-4291-63f4-3ca6-34471b254f01', '2ef50f93-192b-b168-969d-304c8e675e1d', 'status_private', 'agentic_db_status_private', NULL, false),
  ('dde9d580-bec9-b524-f62a-4cf00d07e04c', '2ef50f93-192b-b168-969d-304c8e675e1d', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('e1597e9a-af46-fd48-5605-3a10d6c3ea3d', '2ef50f93-192b-b168-969d-304c8e675e1d', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('ec5002a7-7d8e-f720-3a79-ac6edd4aee30', '2ef50f93-192b-b168-969d-304c8e675e1d', 'permissions_public', 'agentic_db_permissions_public', NULL, true);


SET session_replication_role TO DEFAULT;


