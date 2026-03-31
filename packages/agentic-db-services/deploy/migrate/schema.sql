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
  ('019d416f-3277-72f0-a72e-84351425b6b4', '019d416f-3253-7543-a058-30ea5a6b7e37', 'public', 'agentic_db_public', NULL, true),
  ('019d416f-3279-737e-9f76-f2c57a95239f', '019d416f-3253-7543-a058-30ea5a6b7e37', 'private', 'agentic_db_private', NULL, false),
  ('019d416f-3598-77b7-87c4-a9b4f6c75faa', '019d416f-3253-7543-a058-30ea5a6b7e37', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d416f-3696-76ea-9923-a549468f2fae', '019d416f-3253-7543-a058-30ea5a6b7e37', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d416f-377d-7503-9eca-199aa3a1bcdb', '019d416f-3253-7543-a058-30ea5a6b7e37', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d416f-3c9c-7189-bb0c-e43871321173', '019d416f-3253-7543-a058-30ea5a6b7e37', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d416f-3f01-761a-994c-357209f4987d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d416f-3fa7-7264-b5fd-df510f8e5685', '019d416f-3253-7543-a058-30ea5a6b7e37', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d416f-438a-74a9-a9d4-eb3a7dda509e', '019d416f-3253-7543-a058-30ea5a6b7e37', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d416f-442d-7172-aa7a-d298566bf339', '019d416f-3253-7543-a058-30ea5a6b7e37', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d416f-47b0-78b7-8a15-68d1c1a5cd20', '019d416f-3253-7543-a058-30ea5a6b7e37', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d416f-5966-717d-a590-da071769576d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d416f-5a0c-78e9-8ce9-ef4ce8014e01', '019d416f-3253-7543-a058-30ea5a6b7e37', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d416f-6491-702b-967e-ba6919a19cc1', '019d416f-3253-7543-a058-30ea5a6b7e37', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d416f-6539-7d5e-a575-aee6f3fc9406', '019d416f-3253-7543-a058-30ea5a6b7e37', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d416f-cc1c-735a-a68f-a9336da8ec25', '019d416f-3253-7543-a058-30ea5a6b7e37', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d416f-cfad-7e4b-b9af-9bb5209c5f61', '019d416f-3253-7543-a058-30ea5a6b7e37', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d416f-e019-70f1-afa6-0d392d6c5cec', '019d416f-3253-7543-a058-30ea5a6b7e37', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d416f-e428-7c91-84b3-441173f7e68c', '019d416f-3253-7543-a058-30ea5a6b7e37', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d416f-e579-75db-83d9-e2a13677ef1d', '019d416f-3253-7543-a058-30ea5a6b7e37', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d416f-e66a-702e-8e0b-94a0d835daec', '019d416f-3253-7543-a058-30ea5a6b7e37', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d416f-f643-7f17-8992-1a4684867502', '019d416f-3253-7543-a058-30ea5a6b7e37', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d416f-f737-7be3-a72a-5f2cb1fd6096', '019d416f-3253-7543-a058-30ea5a6b7e37', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d4170-0de1-7791-a79c-c4d5284ddefe', '019d416f-3253-7543-a058-30ea5a6b7e37', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


