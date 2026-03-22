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
  ('019d1795-469c-7473-8e81-1a9859ff1527', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'public', 'agentic_db_public', NULL, true),
  ('019d1795-469d-7eab-b7ee-8420ff09d89a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'private', 'agentic_db_private', NULL, false),
  ('019d1795-47d3-764d-b9c4-acc8c8cd3277', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d1795-484c-717b-8de4-6fc6916eae8f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d1795-48d6-712e-b0a5-7d603cff15b6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d1795-4c1b-7a59-8ae4-3c48b8349459', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d1795-4dc9-7963-b675-eb49e0615e7a', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d1795-4e4d-7f23-afa5-ed4e08e0abec', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d1795-5134-772b-9356-915358d7fbd1', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d1795-51ab-773d-92fa-c6958bcfe3fd', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d1795-547c-772e-88aa-b0d16f40b989', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d1795-6275-70aa-9814-444b221e3a6d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d1795-62fa-7665-a401-4e3131e3c95f', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d1795-6bca-79c3-94ab-c5e751df8b3e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d1795-6c55-7a13-bde4-a881c0a9ccc2', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d1795-c953-7eed-a71c-5f3a234b146d', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d1795-cca2-7f7a-967c-79accdccaeb6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d1795-dbc8-7645-9ced-c8843478146e', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d1795-df9c-742c-be0f-3ec04dbe16f5', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d1795-e0d3-7bc6-9ab7-a72ca3763767', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d1795-e1ad-7e6c-ae53-69470f710b04', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d1795-f0bb-7784-9893-064646694c83', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d1795-f19a-7f7a-8b00-b27ee187f2d6', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d1796-068f-76c9-8685-17292d631224', '019d1795-468e-7f13-8fa9-c40a9f5f3beb', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


