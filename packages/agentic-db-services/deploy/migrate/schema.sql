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
  ('019d13bc-1f2e-7f3b-906e-d1efd67d6426', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'public', 'agentic_db_public', NULL, true),
  ('019d13bc-1f30-7a7d-ab17-b11ccc957cef', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'private', 'agentic_db_private', NULL, false),
  ('019d13bc-2033-7790-b395-83816a348724', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d13bc-20ab-7e5b-9560-cae8e715fc7e', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d13bc-212d-7f3b-8919-9567227a7198', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d13bc-2487-7b34-8538-87ad5885ba2a', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d13bc-265f-7e44-9f4c-5610f3e82a7b', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d13bc-26dc-750f-9b02-e48a2bd36928', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d13bc-29eb-77ca-9217-6d537277d807', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d13bc-2a6b-7b46-aaa5-8e38d4843dd7', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d13bc-2d61-7958-8065-7db3e62795fc', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d13bc-3bf6-7272-af86-35c25e711f31', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d13bc-3c85-7ddd-95c9-cf478bf92338', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d13bc-4588-73c9-8ad3-4567ea4e0725', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d13bc-4619-7116-a267-51754435dc9d', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d13bc-9ca0-7e1f-a096-fbdf33e39554', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d13bc-9fc4-7b2c-8762-40424411642e', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d13bc-ae42-7b48-9fda-d387dff86746', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d13bc-b1d9-78ee-852f-34e586b4ea0d', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d13bc-b32e-795b-88ad-05e3d9e027f2', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d13bc-b3f5-7927-836b-995e505c2d9a', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d13bc-c0d5-7daa-abf9-70ea7fc7de63', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d13bc-c1a9-7009-83fe-379a7340eb07', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d13bc-d53f-73b6-abbb-c3a3912a4d08', '019d13bc-1f23-7305-9068-cef2ccaf4226', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


