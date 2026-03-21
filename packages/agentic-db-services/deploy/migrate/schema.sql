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
  ('019d11d9-57f5-7643-87a7-5f278469c434', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'public', 'agentic_db_public', NULL, true),
  ('019d11d9-57f7-7450-8cdc-56f16a3a663c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'private', 'agentic_db_private', NULL, false),
  ('019d11d9-5933-7365-91cc-cb5bb4a8bba9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d11d9-59ba-7076-b4a4-176b7ed2442a', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d11d9-5a57-7c42-8fea-59874686594d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d11d9-5e47-76cc-9644-05e7a92626a9', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d11d9-604b-7a97-92c4-28c87e7553a3', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d11d9-60dc-7883-ae8b-a69658dafb64', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d11d9-6437-727c-877f-51da87756a96', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d11d9-64c0-75b8-bf4d-0b7d00404a3b', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d11d9-67f0-73cf-ae19-ce25b6d1ba46', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d11d9-78c4-70db-98c4-bfc3f260c891', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d11d9-796d-72a5-9b85-d8f30fe49093', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d11d9-8326-773f-9e95-2885ab65ca4e', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d11d9-8406-7c35-8133-14b44cd60fbd', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d11d9-ec24-744c-9fd7-ceaf6e081b3d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d11d9-ef4e-7d1f-a945-b3a274b2570c', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d11d9-fe2e-7763-807d-bfcc97df24e0', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d11da-01f4-7d57-9c6a-119a769d4b88', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d11da-0341-73a5-bbdf-63c4da9099ca', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d11da-0417-742d-8cb7-e8434091144f', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d11da-13bf-70d2-aac6-828c5a7647ad', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d11da-1497-7678-a9e1-25432a96498d', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d11da-28fe-7b31-a601-e20b4dc2e002', '019d11d9-57e6-748d-91f1-8d571d4d7f22', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


