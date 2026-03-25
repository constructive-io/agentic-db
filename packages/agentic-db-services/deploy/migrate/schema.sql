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
  ('019d2727-6ec7-75b5-afc3-14a144860363', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'public', 'agentic_db_public', NULL, true),
  ('019d2727-6ec8-7d20-84a8-8319f15cdfac', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'private', 'agentic_db_private', NULL, false),
  ('019d2727-6fd4-7f83-b580-e2af66031e3e', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d2727-7051-7115-bb43-5bd8b5eff377', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d2727-70d2-7ff6-9f58-1e1b136e5302', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d2727-7441-782b-8fbb-66db0def84ca', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d2727-7611-728a-9250-705c33715905', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d2727-768f-716e-b06b-9e19829609a4', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d2727-79ae-7cf1-aefd-d3da3c46df61', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d2727-7a31-761e-b086-a70a660a2408', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d2727-7d11-762f-a2e0-1e65abab72fe', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d2727-8e23-776f-810f-30a672214fee', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d2727-8eb6-734b-a8ec-44bdf575cea4', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d2727-977e-7943-a27c-99bb78bbc5b5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d2727-980e-7579-a498-8753fe8b63e3', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d2727-fdad-7560-8fcd-c7ebb8041176', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d2728-00ee-739b-916e-9294e2a82cb6', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d2728-104f-7ca8-b717-9d825ebe5cc2', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d2728-1408-79e7-9734-7852892ab5dd', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d2728-1547-7fd8-9754-8b07b30fbec5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d2728-1621-717e-8122-efc23849441c', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d2728-2af3-736d-afa0-01b2c5c9bcf0', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d2728-2bd0-7d1c-9fc9-b9756abed8e5', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d2728-43b6-755a-95f0-8f4e21a17740', '019d2727-6ebb-7f47-9b5c-037b66e19618', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


