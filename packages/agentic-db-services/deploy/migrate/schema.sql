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
  ('197eaace-fe05-2038-3d3c-b14d1ab7e048', '14b01c2d-072a-5594-645a-675751a83d86', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('2ed38f5a-a2c7-7f90-732f-a63173cc47e1', '14b01c2d-072a-5594-645a-675751a83d86', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('34fb2c11-bc37-0c63-a3ed-1949ae860cd7', '14b01c2d-072a-5594-645a-675751a83d86', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('386e074d-5dd4-7d6e-7ecd-3611254961c5', '14b01c2d-072a-5594-645a-675751a83d86', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('402d4be8-210c-4a45-d7bb-2c14a959dacf', '14b01c2d-072a-5594-645a-675751a83d86', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('598a2f9e-3116-b19b-4703-d5a31d0b22df', '14b01c2d-072a-5594-645a-675751a83d86', 'app_private', 'agentic_db_app_private', NULL, false),
  ('5f87fd0b-3e41-7188-daad-7a12256d4ad7', '14b01c2d-072a-5594-645a-675751a83d86', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('60b82ba9-4f66-84f7-aab8-5a3ee1bd6fe8', '14b01c2d-072a-5594-645a-675751a83d86', 'status_public', 'agentic_db_status_public', NULL, true),
  ('73486766-2491-e7d3-2837-0af7a0aa0dc1', '14b01c2d-072a-5594-645a-675751a83d86', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('7d46d112-a70d-f618-7900-3e5c20b382bb', '14b01c2d-072a-5594-645a-675751a83d86', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('81934a51-0614-ec94-d98f-1fe3d7c22dc4', '14b01c2d-072a-5594-645a-675751a83d86', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('89288808-b68c-6635-f0ae-55f5a1d29c85', '14b01c2d-072a-5594-645a-675751a83d86', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('8ab38567-f44a-918e-1913-05b2e0f3918f', '14b01c2d-072a-5594-645a-675751a83d86', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('946258fc-eb29-ce55-7946-86e554402d12', '14b01c2d-072a-5594-645a-675751a83d86', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('a841229c-1e8a-8118-8b1a-589d543b924c', '14b01c2d-072a-5594-645a-675751a83d86', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('a8bc6911-3f9d-0e65-5ca6-21035222997f', '14b01c2d-072a-5594-645a-675751a83d86', 'logging_public', 'agentic_db_logging_public', NULL, true),
  ('aa478a49-d1c3-5f21-fcba-0f8994af16a7', '14b01c2d-072a-5594-645a-675751a83d86', 'private', 'agentic_db_private', NULL, false),
  ('ad44e072-783e-1315-4950-4c52779e8bd0', '14b01c2d-072a-5594-645a-675751a83d86', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('bb95df7b-2908-00d7-b800-b1e9c67965d5', '14b01c2d-072a-5594-645a-675751a83d86', 'public', 'agentic_db_public', NULL, true),
  ('cbc61d43-ac18-5796-2c32-90c8f324b121', '14b01c2d-072a-5594-645a-675751a83d86', 'status_private', 'agentic_db_status_private', NULL, false),
  ('d68f05fe-53e6-7119-1356-9044a8382537', '14b01c2d-072a-5594-645a-675751a83d86', 'app_public', 'agentic_db_app_public', NULL, true),
  ('e65c3452-fa68-6a07-60d7-a3f190806408', '14b01c2d-072a-5594-645a-675751a83d86', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('e77968b2-9aff-6a76-b82f-12052120fbdf', '14b01c2d-072a-5594-645a-675751a83d86', 'users_public', 'agentic_db_users_public', NULL, true),
  ('e9eee499-5b77-f62d-9b9e-1291de0c0b89', '14b01c2d-072a-5594-645a-675751a83d86', 'limits_private', 'agentic_db_limits_private', NULL, false);


SET session_replication_role TO DEFAULT;


