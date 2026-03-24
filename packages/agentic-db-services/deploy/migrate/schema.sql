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
  ('0ccc8ccf-e55c-3b1f-bc25-c6f20115dade', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'status_private', 'agentic_db_status_private', NULL, false),
  ('11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('343368ea-17de-176c-f14b-ee59fef96a24', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('3c4ef6b4-438c-128a-7654-5af17798e439', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('43d51e76-c81d-cf4c-73dc-9a819c9ef1fb', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('4ae689ab-c446-e2cc-0056-daef88da7a6b', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('73039e61-65c0-7ce3-9869-9bbcb0468fde', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'logging_public', 'agentic_db_logging_public', NULL, true),
  ('7652b564-62c7-22d6-ad88-2b68efdaab16', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'users_public', 'agentic_db_users_public', NULL, true),
  ('8f7308b0-c788-f566-4959-59c563e849da', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'private', 'agentic_db_private', NULL, false),
  ('a2eb6b64-0376-3481-e713-9258e486fdba', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('bc5b9197-1a71-2d22-1970-63e1e07d7c7e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('bd4ba12c-6e3f-cc44-a1ad-64fcdb0ff052', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('bf7de37d-942e-7f7a-cebb-49664a1cf370', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'app_public', 'agentic_db_app_public', NULL, true),
  ('c9de8540-bf1d-2bbb-518d-39b893b55636', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'status_public', 'agentic_db_status_public', NULL, true),
  ('e005449b-7ef7-37df-9c51-2cfec020fa43', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'public', 'agentic_db_public', NULL, true),
  ('e0ca3db8-86c1-6d4a-9868-f63771343a59', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('eeb1aa89-f88f-71ab-1cb6-5bd4633ab5ff', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('f27e15b4-8682-5826-c090-4043aec62aa1', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'app_private', 'agentic_db_app_private', NULL, false),
  ('f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('f7f9e477-72d7-d469-8909-16a70915e9d5', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('ff1bb0fc-6007-c362-8fe1-814dd187cedf', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'invites_public', 'agentic_db_invites_public', NULL, true);


SET session_replication_role TO DEFAULT;


