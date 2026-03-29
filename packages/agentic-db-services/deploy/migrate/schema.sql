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
  ('0bbabd9e-b4d7-8d68-1bf5-0b49d841b9ee', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('0c0c780f-932a-f178-1823-6b5c12b5ef4d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('3c90c870-5be4-80bc-46c2-ebdeaca29c29', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'app_public', 'agentic_db_app_public', NULL, true),
  ('42be1a76-ba10-b5cd-3ba9-2318d0d28b3c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('42e601b4-c9b7-85c6-8070-280206198cb1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'status_private', 'agentic_db_status_private', NULL, false),
  ('5255939a-a6c7-e342-1d6f-d3c93fc9b7f9', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('8386d7da-fb67-d0e4-1f9e-66c2664e364d', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'status_public', 'agentic_db_status_public', NULL, true),
  ('8ecd91da-06ae-c2bb-62d1-de71d843012e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('a716f61a-35d1-575d-553c-8fbffc909ce4', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('a906f632-e7bf-07fe-e109-db368bf6f3a2', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'app_private', 'agentic_db_app_private', NULL, false),
  ('ab689d40-f54d-1977-4b91-6c20b76e8464', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'users_public', 'agentic_db_users_public', NULL, true),
  ('af50636a-cc1b-4aba-4f61-3212a897fc81', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('b0fef0a3-d187-0423-4152-0887820a558a', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('b63596fb-0d8d-403d-c55b-23ccdf3cbf2b', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('c4122275-13d5-60b5-6e1c-89657a87ec34', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('cd10eaa0-c4b6-aeb0-9d6b-eee90bc85730', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'logging_public', 'agentic_db_logging_public', NULL, true),
  ('d1bcbc12-1cce-8994-1ea3-cdb659c8dc81', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('db6d695b-2875-6cb2-5045-718fb4acf97c', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'private', 'agentic_db_private', NULL, false),
  ('df370469-c3cb-32a2-054c-173a2f06e5b7', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('e0484cce-f237-83e0-38cc-9237396461bf', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('e0e16f38-1c16-2921-39fa-f481233a9ba1', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'public', 'agentic_db_public', NULL, true),
  ('e3af2a09-df53-721e-3fe0-5289578e5d09', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('e695c734-fa1c-d164-4946-4587a97f3b04', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('efb3b5d4-50f4-f1c2-b5ad-5c27f1a0d15e', 'f2518f84-cbe2-d97a-313c-5b54d1e126ff', 'permissions_private', 'agentic_db_permissions_private', NULL, false);


SET session_replication_role TO DEFAULT;


