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
  ('73977af2-89d9-0e71-6ef9-af9eb05df739', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'public', 'agentic_db_public', NULL, true),
  ('732d0b12-25d0-8213-5958-22b72c58c0ca', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'private', 'agentic_db_private', NULL, false),
  ('b62bbadd-e83f-ad42-cfab-b7c0e8b7f250', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'app_public', 'agentic_db_app_public', NULL, true),
  ('31b36d8d-108e-89ec-22c1-d75625ffb4da', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'app_private', 'agentic_db_app_private', NULL, false),
  ('a590b9ac-fbaf-5dd0-bce1-84cff079ebe8', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'users_public', 'agentic_db_users_public', NULL, true),
  ('a8090207-c915-30c6-0984-f42a82be403d', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('fa622281-9676-d3b2-9fc3-f5dca9776102', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('2061922e-bfa9-f0a6-e73b-62374777b202', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('4876ab00-d88b-6ee9-d562-200acedcd846', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('13844e26-cc87-71d8-47db-93774a9d9be0', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('8ef2f646-75ef-3277-eeb8-f2a25c531296', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('156281d5-710d-45aa-9729-fb999412dfc5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'status_public', 'agentic_db_status_public', NULL, true),
  ('02711eaa-629d-c8fc-8ca3-c2998fccfeba', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'status_private', 'agentic_db_status_private', NULL, false),
  ('45648a02-5229-1516-3409-361f8893c583', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('17108ef6-803e-1873-9c2a-6e930dd81cfa', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('0e71ab69-6ae2-07e0-39cb-1368faa2f7f5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('63d36554-dc1f-cb6d-8af7-5d38aa8f3fcc', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('dada6e89-ce7e-0f29-61fb-f74d7bcf2334', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('a1472811-e8bf-d6d5-57aa-ed725576e8a0', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('e3508c8b-866b-4a91-6d3c-645e026ce92b', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('34746a8f-5255-defc-7ade-ade252c2a847', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('217cd1d7-de79-df8f-48a0-7f3764dbbfc5', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('f531c411-5246-5bc5-4a9d-c1fb42b5b6b2', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('886b56eb-2f56-3cac-8fc2-b8610e1fce8e', '8ec84715-45cb-2837-1ed2-48d7fa916c81', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


