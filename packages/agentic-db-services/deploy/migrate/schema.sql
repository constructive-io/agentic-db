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
  ('019d42ff-c76e-787a-a232-7e96af0b9d23', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'public', 'agentic_db_public', NULL, true),
  ('019d42ff-c770-7c4f-b7ff-e437cb7e8bb9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'private', 'agentic_db_private', NULL, false),
  ('019d42ff-c89d-70bf-8fb8-f916c2f15a03', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d42ff-c924-7cc2-bb4a-81e459c35efa', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d42ff-c9cb-7479-8e4d-02c1f0985a66', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d42ff-ce03-722d-82bd-39b558050ea6', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d42ff-d02d-7ebf-9746-bbce1fc5bbd0', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d42ff-d0b9-79dc-b333-ba049fa204bf', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d42ff-d47f-7297-9cde-6e0a2f1e2c50', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d42ff-d520-722e-be7e-555a55616902', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d42ff-d89c-73d4-b046-df54a48af77e', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d42ff-e972-77d4-9058-8c13c0794f59', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d42ff-ea0d-7200-b7ae-f92d8b4d3a40', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d42ff-f46d-7386-ae21-158ff8319f71', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d42ff-f515-7133-828c-09d6ea0b9f2c', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d4300-535d-7fc4-b080-ba6a0026ad23', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d4300-56cf-7759-9537-045a99bc4419', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d4300-6722-7bdb-a998-f903280342f9', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d4300-6b30-7a8d-86cc-21bfca0a8064', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d4300-6c86-786a-b55f-0c75438df2a1', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d4300-6d68-7dee-aad9-7434f9b11bbe', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d4300-7bb9-762e-9a1d-b999dea88b8d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d4300-7ca1-767d-9498-7d8c8aae7d5b', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d4300-9354-7eea-809c-f12007613a9d', '019d42ff-c75a-7c43-be39-ef7a74b280f4', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


