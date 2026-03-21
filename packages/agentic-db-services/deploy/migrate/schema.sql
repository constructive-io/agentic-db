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
  ('019d0ffe-4d7d-7dc4-aae5-1ec1be75b1ba', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'public', 'agentic_db_public', NULL, true),
  ('019d0ffe-4d80-71bd-a460-1a587e9514ef', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'private', 'agentic_db_private', NULL, false),
  ('019d0ffe-4ec6-7024-aefb-6538e1c65f80', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d0ffe-4f56-73f2-b04e-139199b7b924', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d0ffe-5005-7453-aa5a-524b38bb4964', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d0ffe-53ea-7609-a293-cf598cb70844', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d0ffe-55fb-79a7-a36a-b7eefa012886', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d0ffe-5689-7417-991b-59dc348f6899', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d0ffe-59ed-7843-b6e2-96951d24124c', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d0ffe-5a7d-7ee0-8e58-299fa43bcd2b', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d0ffe-5db3-7d04-bb81-f7a810b15714', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d0ffe-6d73-7f1b-9df9-450724399b61', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d0ffe-6e0f-7dfd-81e6-17f69d062f48', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d0ffe-77a1-72fe-9020-0e3df17e655f', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d0ffe-7844-7f5e-95f9-cb42ffa06190', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d0ffe-d58f-7f44-9e0d-38d0a2b6d2e0', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d0ffe-d8bb-787d-afd6-15360479f5b7', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d0ffe-e767-7bb0-a60f-1e5f516e5bb8', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d0ffe-eb33-7292-8ac2-b92b377281ba', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d0ffe-ec7f-7063-8b91-80cd2dd12080', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d0ffe-ed54-7fef-933f-dacbeb5ee307', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d0ffe-faf8-7914-b664-9b671fee8616', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d0ffe-fbd1-74af-b0a9-707adc0d5c13', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d0fff-0fd9-771c-8075-ae20ba3e2c0a', '019d0ffe-4d6d-7080-bf5e-4af8af979c90', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


