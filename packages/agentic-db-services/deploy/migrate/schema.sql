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
  ('019d37b9-b4d0-7f12-8455-e42d78556194', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'public', 'agentic_db_public', NULL, true),
  ('019d37b9-b4d3-7bb0-8be7-bb2ad9a383fa', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'private', 'agentic_db_private', NULL, false),
  ('019d37b9-b608-7dd1-bc6e-795b1955bf99', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d37b9-b691-7e6a-b300-be9b2d7afe13', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d37b9-b724-7c50-8fc3-1e8ca40b9e53', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d37b9-bb21-792b-800c-4cfd5fc2db67', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d37b9-bd23-7bf3-ab01-cc5e09ea9fee', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d37b9-bdc5-7818-84a8-a271b45e74b1', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d37b9-c0e7-71bb-80a8-c0f8d64a4b95', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d37b9-c16f-734c-8c5c-072d5621dc06', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d37b9-c48f-7769-a7a8-70fded63c6ee', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d37b9-d4a5-7eed-885a-e1558baf0e34', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d37b9-d52f-7d59-8716-1c99edd81795', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d37b9-dde1-795e-8157-90638d814b56', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d37b9-de6f-7eb8-a051-7006f1d96b09', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d37ba-3e4c-7e4d-8037-192a98fe0f73', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d37ba-4154-707f-968e-bbbc85961df7', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d37ba-5004-7d17-8fdb-2c698ed2d176', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d37ba-53bd-7dfa-9a2a-9c95c48a260a', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d37ba-54e9-7c28-abc2-c0964be7bedc', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d37ba-55bf-736a-a2e9-f0533fa6526e', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d37ba-66ba-77a5-abda-e78f17b9a7e8', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d37ba-678c-7eae-87e8-70672401e2af', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d37ba-7d32-7fdb-8f65-deee83304813', '019d37b9-b4ba-747d-9bd7-98d3ec25d59c', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


