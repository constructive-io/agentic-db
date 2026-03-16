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
  ('9bc15f10-1fd4-453f-651b-f69a8ecc64d6', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'public', 'agentic_db_public', NULL, true),
  ('9bc11478-e8dd-4e1b-6f3a-26b4d752f339', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'private', 'agentic_db_private', NULL, false),
  ('9bc1d35c-4bca-4aa6-3129-497cf17e7c74', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'app_public', 'agentic_db_app_public', NULL, true),
  ('9bc10fed-678e-4cc3-2e15-c2aca226b5b0', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'app_private', 'agentic_db_app_private', NULL, false),
  ('9bc15355-9569-493c-22f5-114c7c5c1c5f', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'users_public', 'agentic_db_users_public', NULL, true),
  ('9bc182c5-302d-474c-c74c-02be749f675f', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('9bc190de-3805-4618-f647-779f6633698b', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('9bc1e3ac-0a41-488a-0d15-bb48423ccefd', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('9bc1c0d4-dc91-475c-df6e-fb6a6a78144c', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('9bc199e2-fa86-421f-61a9-3a4c73ecd43c', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('9bc15150-00d3-4748-493e-ce24299e8088', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('9bc18d87-4174-48d7-4462-65bc8c8940b1', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'status_public', 'agentic_db_status_public', NULL, true),
  ('9bc13aa2-3ca4-47e8-2c28-3d1de930d857', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'status_private', 'agentic_db_status_private', NULL, false),
  ('9bc1e340-94be-4446-ba8f-99e229f64eae', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('9bc145f8-c7bb-4509-4eec-027bdb8b0157', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('9bc1c779-435b-4ae7-468f-30965c359626', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('9bc1d761-1ce6-4c24-a4fa-d50d50e2cea8', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('9bc10011-3539-42c2-824b-ae05d7fae313', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('9bc12c29-ce87-431b-bfca-4e2c6985957d', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('9bc16bea-2648-41c8-18b3-2227bbcea9ab', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('9bc1e521-4779-4a20-1009-12da67955ff8', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('9bc1c7db-8ef4-4173-a16f-af76e1b57ef3', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('9bc1551a-2492-4ffa-e37f-794baa421c6d', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('9bc1505b-6c72-48fd-d6c7-1a437c8fcca9', '14d9536f-0092-4ddb-87f8-eddad14902bd', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


