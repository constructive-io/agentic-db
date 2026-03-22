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
  ('019d130c-edd7-7e55-8939-31993ec40326', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'public', 'agentic_db_public', NULL, true),
  ('019d130c-edd9-7e69-a0e0-86ad6b589f64', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'private', 'agentic_db_private', NULL, false),
  ('019d130c-ef3a-72e2-980b-0adf9c978ae5', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'app_public', 'agentic_db_app_public', NULL, true),
  ('019d130c-efd9-7af1-9df6-51db11689e22', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'app_private', 'agentic_db_app_private', NULL, false),
  ('019d130c-f095-7044-9f6d-6b3bd1c994f0', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'users_public', 'agentic_db_users_public', NULL, true),
  ('019d130c-f528-7521-ad98-5049be733d14', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'memberships_public', 'agentic_db_memberships_public', NULL, true),
  ('019d130c-f774-78ae-bf70-3d1cee60d391', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'permissions_public', 'agentic_db_permissions_public', NULL, true),
  ('019d130c-f814-738d-986f-e4f0308105a3', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'permissions_private', 'agentic_db_permissions_private', NULL, false),
  ('019d130c-fbeb-7677-ae56-0be99522dd89', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'limits_public', 'agentic_db_limits_public', NULL, true),
  ('019d130c-fc93-7634-b76e-fd58a64ae608', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'limits_private', 'agentic_db_limits_private', NULL, false),
  ('019d130d-0086-7cc7-9efe-8faaa639cb1e', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'memberships_private', 'agentic_db_memberships_private', NULL, false),
  ('019d130d-1478-775d-af81-1a664aec861e', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'status_public', 'agentic_db_status_public', NULL, true),
  ('019d130d-153a-70ed-b43a-a6a92517f8dc', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'status_private', 'agentic_db_status_private', NULL, false),
  ('019d130d-2060-7e0f-9f3e-6ea1df8c604b', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'profiles_public', 'agentic_db_profiles_public', NULL, true),
  ('019d130d-211b-70f3-b2e9-5bcd1fdefeb8', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'profiles_private', 'agentic_db_profiles_private', NULL, false),
  ('019d130d-8d84-77d5-b268-d3e423c44bbd', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'simple_secrets', 'agentic_db_simple_secrets', NULL, true),
  ('019d130d-9107-7123-9c95-a9fa142077c3', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'auth_private', 'agentic_db_auth_private', NULL, false),
  ('019d130d-a22e-7c6f-be54-3753f85ecb70', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'encrypted', 'agentic_db_encrypted', NULL, true),
  ('019d130d-a6b2-7851-9ce6-4522683de589', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'auth_public', 'agentic_db_auth_public', NULL, true),
  ('019d130d-a816-7411-a7a6-8f45bce99505', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'user_identifiers_public', 'agentic_db_user_identifiers_public', NULL, true),
  ('019d130d-a908-7ac6-b490-603417d4ece9', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'user_identifiers_private', 'agentic_db_user_identifiers_private', NULL, false),
  ('019d130d-b9cf-76bf-bc61-35da51b658dd', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'invites_public', 'agentic_db_invites_public', NULL, true),
  ('019d130d-bac1-7e50-8f1c-ef65689ef1b2', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'invites_private', 'agentic_db_invites_private', NULL, false),
  ('019d130d-d231-7344-851f-bb0c26d82f4b', '019d130c-edc8-7abe-b39e-3935c59e44fe', 'logging_public', 'agentic_db_logging_public', NULL, true);


SET session_replication_role TO DEFAULT;


