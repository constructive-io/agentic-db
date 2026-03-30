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
  ('019d3daa-fe2b-747e-851f-97fbff7bed07', '019d3daa-fe1f-718c-ac17-5692dc771810', 'public', 'agentic_db_public', NULL, true),
  ('019d3daa-fe2d-71ef-bb39-866600eeaed9', '019d3daa-fe1f-718c-ac17-5692dc771810', 'private', 'agentic_db_private', NULL, false),
  ('019d3daa-ff32-79fb-9090-387f029df43b', '019d3daa-fe1f-718c-ac17-5692dc771810', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d3daa-ffaa-738e-a2f2-a3453100bd8c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d3dab-002a-7fad-85d1-275b4f59abee', '019d3daa-fe1f-718c-ac17-5692dc771810', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d3dab-03c6-7630-a278-03cc476571de', '019d3daa-fe1f-718c-ac17-5692dc771810', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d3dab-05af-70e1-92cf-72aabeae605c', '019d3daa-fe1f-718c-ac17-5692dc771810', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d3dab-0635-7f01-9b19-4c4e596c6114', '019d3daa-fe1f-718c-ac17-5692dc771810', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d3dab-09ae-75ea-8737-15a5619d093a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d3dab-0a3d-7b03-99ad-334c86b5d166', '019d3daa-fe1f-718c-ac17-5692dc771810', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d3dab-0d59-7a36-8f13-1f1eaa4266c4', '019d3daa-fe1f-718c-ac17-5692dc771810', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d3dab-1ceb-7693-a450-cbc750a78c9a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d3dab-1d7e-7715-87ad-f84cbaf8659d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d3dab-2701-792f-9b98-c31129eaf70e', '019d3daa-fe1f-718c-ac17-5692dc771810', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d3dab-27a3-7c0c-85f7-b500af68c433', '019d3daa-fe1f-718c-ac17-5692dc771810', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d3dab-863e-765e-a862-79daa7dfbec1', '019d3daa-fe1f-718c-ac17-5692dc771810', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d3dab-8997-7974-bdb2-960a100e027f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d3dab-98e0-7333-adad-3a1c4c4fa3ca', '019d3daa-fe1f-718c-ac17-5692dc771810', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d3dab-9c9d-733f-913c-3c22ae0a3f7a', '019d3daa-fe1f-718c-ac17-5692dc771810', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', '019d3daa-fe1f-718c-ac17-5692dc771810', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d3dab-9ea3-7c9d-966a-ab7fe635c56f', '019d3daa-fe1f-718c-ac17-5692dc771810', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d3dab-abe2-758c-95b6-5ac57d5513cf', '019d3daa-fe1f-718c-ac17-5692dc771810', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d3dab-acbb-7f33-839e-21262a330532', '019d3daa-fe1f-718c-ac17-5692dc771810', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d3dab-c0be-79df-a1d2-4105df8900dd', '019d3daa-fe1f-718c-ac17-5692dc771810', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


