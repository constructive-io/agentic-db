\echo Use "CREATE EXTENSION metaschema-modules" to load this file. \quit
CREATE SCHEMA metaschema_modules_public;

GRANT USAGE ON SCHEMA metaschema_modules_public TO authenticated;

GRANT USAGE ON SCHEMA metaschema_modules_public TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON TABLES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON SEQUENCES TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON FUNCTIONS TO authenticated;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON TABLES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON SEQUENCES TO administrator;

ALTER DEFAULT PRIVILEGES IN SCHEMA metaschema_modules_public
  GRANT ALL ON FUNCTIONS TO administrator;

CREATE TABLE metaschema_modules_public.connected_accounts_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.connected_accounts_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.connected_accounts_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.connected_accounts_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.connected_accounts_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.connected_accounts_module IS '@omit manyToMany';

CREATE INDEX connected_accounts_module_database_id_idx ON metaschema_modules_public.connected_accounts_module (database_id);

CREATE TABLE metaschema_modules_public.crypto_addresses_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL,
  crypto_network text NOT NULL DEFAULT 'BTC',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.crypto_addresses_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.crypto_addresses_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.crypto_addresses_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.crypto_addresses_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.crypto_addresses_module IS '@omit manyToMany';

CREATE INDEX crypto_addresses_module_database_id_idx ON metaschema_modules_public.crypto_addresses_module (database_id);

CREATE TABLE metaschema_modules_public.crypto_auth_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  addresses_table_id uuid NOT NULL DEFAULT uuid_nil(),
  user_field text NOT NULL,
  crypto_network text NOT NULL DEFAULT 'BTC',
  sign_in_request_challenge text NOT NULL DEFAULT 'sign_in_request_challenge',
  sign_in_record_failure text NOT NULL DEFAULT 'sign_in_record_failure',
  sign_up_with_key text NOT NULL DEFAULT 'sign_up_with_key',
  sign_in_with_challenge text NOT NULL DEFAULT 'sign_in_with_challenge',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT secrets_table_fkey
    FOREIGN KEY(secrets_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT secrets_table_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.crypto_auth_module IS '@omit manyToMany';

CREATE INDEX crypto_auth_module_database_id_idx ON metaschema_modules_public.crypto_auth_module (database_id);

CREATE TABLE metaschema_modules_public.default_ids_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.default_ids_module IS '@omit manyToMany';

CREATE INDEX default_ids_module_database_id_idx ON metaschema_modules_public.default_ids_module (database_id);

CREATE TABLE metaschema_modules_public.denormalized_table_field (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  table_id uuid NOT NULL,
  field_id uuid NOT NULL,
  set_ids uuid[],
  ref_table_id uuid NOT NULL,
  ref_field_id uuid NOT NULL,
  ref_ids uuid[],
  use_updates bool NOT NULL DEFAULT true,
  update_defaults bool NOT NULL DEFAULT true,
  func_name text NULL,
  func_order int NOT NULL DEFAULT 0,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_table_fkey
    FOREIGN KEY(ref_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT field_fkey
    FOREIGN KEY(field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_field_fkey
    FOREIGN KEY(ref_field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.denormalized_table_field IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.denormalized_table_field IS '@omit manyToMany';

COMMENT ON CONSTRAINT ref_table_fkey ON metaschema_modules_public.denormalized_table_field IS '@omit manyToMany';

COMMENT ON CONSTRAINT field_fkey ON metaschema_modules_public.denormalized_table_field IS '@omit manyToMany';

COMMENT ON CONSTRAINT ref_field_fkey ON metaschema_modules_public.denormalized_table_field IS '@omit manyToMany';

CREATE INDEX denormalized_table_field_database_id_idx ON metaschema_modules_public.denormalized_table_field (database_id);

CREATE TABLE metaschema_modules_public.emails_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.emails_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.emails_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.emails_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.emails_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.emails_module IS '@omit manyToMany';

CREATE INDEX emails_module_database_id_idx ON metaschema_modules_public.emails_module (database_id);

CREATE TABLE metaschema_modules_public.encrypted_secrets_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'encrypted_secrets',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.encrypted_secrets_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.encrypted_secrets_module IS '@omit manyToMany';

CREATE INDEX encrypted_secrets_module_database_id_idx ON metaschema_modules_public.encrypted_secrets_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.encrypted_secrets_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.field_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  field_id uuid NOT NULL DEFAULT uuid_nil(),
  node_type text NOT NULL,
  data jsonb NOT NULL DEFAULT '{}',
  triggers text[],
  functions text[],
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT field_fkey
    FOREIGN KEY(field_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.field_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.field_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT field_fkey ON metaschema_modules_public.field_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.field_module IS '@omit manyToMany';

CREATE INDEX field_module_database_id_idx ON metaschema_modules_public.field_module (database_id);

CREATE INDEX field_module_node_type_idx ON metaschema_modules_public.field_module (node_type);

CREATE TABLE metaschema_modules_public.table_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text DEFAULT NULL,
  node_type text NOT NULL,
  use_rls boolean NOT NULL DEFAULT true,
  data jsonb NOT NULL DEFAULT '{}',
  fields uuid[],
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.table_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.table_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.table_module IS '@omit manyToMany';

CREATE INDEX table_module_database_id_idx ON metaschema_modules_public.table_module (database_id);

CREATE INDEX table_module_table_id_idx ON metaschema_modules_public.table_module (table_id);

CREATE INDEX table_module_node_type_idx ON metaschema_modules_public.table_module (node_type);

CREATE TABLE metaschema_modules_public.secure_table_provision (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text DEFAULT NULL,
  node_type text DEFAULT NULL,
  use_rls boolean NOT NULL DEFAULT true,
  node_data jsonb NOT NULL DEFAULT '{}',
  grant_roles text[] NOT NULL DEFAULT ARRAY['authenticated'],
  grant_privileges jsonb NOT NULL DEFAULT '[]',
  policy_type text DEFAULT NULL,
  policy_privileges text[] DEFAULT NULL,
  policy_role text DEFAULT NULL,
  policy_permissive boolean NOT NULL DEFAULT true,
  policy_name text DEFAULT NULL,
  policy_data jsonb NOT NULL DEFAULT '{}',
  out_fields uuid[] DEFAULT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.secure_table_provision IS 'Provisions security, fields, grants, and policies onto a table. Each row can independently: (1) create fields via node_type, (2) grant privileges via grant_privileges, (3) create RLS policies via policy_type. Multiple rows can target the same table to compose different concerns. All three concerns are optional and independent.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.id IS 'Unique identifier for this provision row.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.database_id IS 'The database this provision belongs to. Required.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.schema_id IS 'Target schema for the table. Defaults to uuid_nil(); the trigger resolves this to the app_public schema if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_id IS 'Target table to provision. Defaults to uuid_nil(); the trigger creates or resolves the table via table_name if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_name IS 'Name of the target table. Used to create or look up the table when table_id is not provided. If omitted, it is backfilled from the resolved table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_type IS 'Which generator to invoke for field creation. One of: DataId, DataDirectOwner, DataEntityMembership, DataOwnershipInEntity, DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete. NULL means no field creation — the row only provisions grants and/or policies.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.use_rls IS 'If true and Row Level Security is not yet enabled on the target table, enable it. Automatically set to true by the trigger when policy_type is provided. Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_data IS 'Configuration passed to the generator function for field creation (only used when node_type is set). Known keys include: field_name (text, default ''id'') for DataId, owner_field_name (text, default ''owner_id'') for DataDirectOwner/DataOwnershipInEntity, entity_field_name (text, default ''entity_id'') for DataEntityMembership/DataOwnershipInEntity, include_id (boolean, default true) for most node_types, include_user_fk (boolean, default true) to add FK to users table. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_roles IS 'Database roles to grant privileges to. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated''].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_privileges IS 'Array of [privilege, columns] tuples defining table grants. Examples: [["select","*"],["insert","*"]] for full access, or [["update",["name","bio"]]] for column-level grants. "*" means all columns; an array means column-level grant. Defaults to ''[]'' (no grants). The trigger validates this is a proper jsonb array.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_type IS 'Policy generator type, e.g. ''AuthzEntityMembership'', ''AuthzMembership'', ''AuthzAllowAll''. NULL means no policy is created. When set, the trigger automatically enables RLS on the target table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_privileges IS 'Privileges the policy applies to, e.g. ARRAY[''select'',''update'']. NULL means privileges are derived from the grant_privileges verbs.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_role IS 'Role the policy targets. NULL means it falls back to the first role in grant_roles.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_permissive IS 'Whether the policy is PERMISSIVE (true) or RESTRICTIVE (false). Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_name IS 'Custom suffix for the generated policy name. When NULL and policy_type is set, the trigger auto-derives a suffix from policy_type by stripping the Authz prefix and underscoring the remainder (e.g. AuthzDirectOwner becomes direct_owner, producing policy names like auth_sel_direct_owner). When explicitly set, the value is passed through as-is to metaschema.create_policy name parameter. This ensures multiple policies on the same table do not collide (e.g. AuthzDirectOwner + AuthzPublishable each get unique names).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_data IS 'Opaque configuration passed through to metaschema.create_policy(). Structure varies by policy_type and is not interpreted by this trigger. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.out_fields IS 'Output column populated by the trigger after field creation. Contains the UUIDs of the metaschema fields created on the target table by this provision row''s generator. NULL when node_type is NULL or before the trigger runs. Callers should not set this directly.';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.secure_table_provision IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.secure_table_provision IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.secure_table_provision IS '@omit manyToMany';

CREATE INDEX secure_table_provision_database_id_idx ON metaschema_modules_public.secure_table_provision (database_id);

CREATE INDEX secure_table_provision_table_id_idx ON metaschema_modules_public.secure_table_provision (table_id);

CREATE INDEX secure_table_provision_node_type_idx ON metaschema_modules_public.secure_table_provision (node_type);

CREATE FUNCTION metaschema_modules_private.tg_set_secure_table_provision_deterministic_id() RETURNS trigger AS $EOFCODE$
BEGIN
  IF current_setting('metaschema.deterministic_ids', true) = 'true' THEN
    NEW.id := metaschema_private.deterministic_id(NEW.table_id, NEW.node_type);
  END IF;
  RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql;

CREATE TRIGGER zzz_set_deterministic_id
  BEFORE INSERT
  ON metaschema_modules_public.secure_table_provision
  FOR EACH ROW
  EXECUTE PROCEDURE metaschema_modules_private.tg_set_secure_table_provision_deterministic_id();

ALTER TABLE metaschema_modules_public.secure_table_provision
  ENABLE ALWAYS TRIGGER zzz_set_deterministic_id;

CREATE TABLE metaschema_modules_public.invites_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  emails_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
  claimed_invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
  invites_table_name text NOT NULL DEFAULT '',
  claimed_invites_table_name text NOT NULL DEFAULT '',
  submit_invite_code_function text NOT NULL DEFAULT '',
  prefix text NULL,
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT invites_table_fkey
    FOREIGN KEY(invites_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT emails_table_fkey
    FOREIGN KEY(emails_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT claimed_invites_table_fkey
    FOREIGN KEY(claimed_invites_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT pschema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT emails_table_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT invites_table_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT claimed_invites_table_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT pschema_fkey ON metaschema_modules_public.invites_module IS '@omit manyToMany';

CREATE INDEX invites_module_database_id_idx ON metaschema_modules_public.invites_module (database_id);

CREATE TABLE metaschema_modules_public.levels_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  steps_table_id uuid NOT NULL DEFAULT uuid_nil(),
  steps_table_name text NOT NULL DEFAULT '',
  achievements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  achievements_table_name text NOT NULL DEFAULT '',
  levels_table_id uuid NOT NULL DEFAULT uuid_nil(),
  levels_table_name text NOT NULL DEFAULT '',
  level_requirements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_requirements_table_name text NOT NULL DEFAULT '',
  completed_step text NOT NULL DEFAULT '',
  incompleted_step text NOT NULL DEFAULT '',
  tg_achievement text NOT NULL DEFAULT '',
  tg_achievement_toggle text NOT NULL DEFAULT '',
  tg_achievement_toggle_boolean text NOT NULL DEFAULT '',
  tg_achievement_boolean text NOT NULL DEFAULT '',
  upsert_achievement text NOT NULL DEFAULT '',
  tg_update_achievements text NOT NULL DEFAULT '',
  steps_required text NOT NULL DEFAULT '',
  level_achieved text NOT NULL DEFAULT '',
  prefix text NULL,
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT steps_table_fkey
    FOREIGN KEY(steps_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT achievements_table_fkey
    FOREIGN KEY(achievements_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT levels_table_fkey
    FOREIGN KEY(levels_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT level_requirements_table_fkey
    FOREIGN KEY(level_requirements_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT steps_table_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT achievements_table_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT levels_table_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT level_requirements_table_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT actor_table_fkey ON metaschema_modules_public.levels_module IS '@omit manyToMany';

CREATE INDEX user_status_module_database_id_idx ON metaschema_modules_public.levels_module (database_id);

CREATE TABLE metaschema_modules_public.limits_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT '',
  default_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_table_name text NOT NULL DEFAULT '',
  limit_increment_function text NOT NULL DEFAULT '',
  limit_decrement_function text NOT NULL DEFAULT '',
  limit_increment_trigger text NOT NULL DEFAULT '',
  limit_decrement_trigger text NOT NULL DEFAULT '',
  limit_update_trigger text NOT NULL DEFAULT '',
  limit_check_function text NOT NULL DEFAULT '',
  prefix text NULL,
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT default_table_fkey
    FOREIGN KEY(default_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

CREATE INDEX limits_module_database_id_idx ON metaschema_modules_public.limits_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT default_table_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT actor_table_fkey ON metaschema_modules_public.limits_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.membership_types_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'membership_types',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.membership_types_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.membership_types_module IS '@omit manyToMany';

CREATE INDEX membership_types_module_database_id_idx ON metaschema_modules_public.membership_types_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.membership_types_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.memberships_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
  memberships_table_name text NOT NULL DEFAULT '',
  members_table_id uuid NOT NULL DEFAULT uuid_nil(),
  members_table_name text NOT NULL DEFAULT '',
  membership_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
  membership_defaults_table_name text NOT NULL DEFAULT '',
  grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  grants_table_name text NOT NULL DEFAULT '',
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sprt_table_id uuid NOT NULL DEFAULT uuid_nil(),
  admin_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  admin_grants_table_name text NOT NULL DEFAULT '',
  owner_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_grants_table_name text NOT NULL DEFAULT '',
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  entity_table_owner_id uuid NULL,
  prefix text NULL,
  actor_mask_check text NOT NULL DEFAULT '',
  actor_perm_check text NOT NULL DEFAULT '',
  entity_ids_by_mask text NULL,
  entity_ids_by_perm text NULL,
  entity_ids_function text NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT memberships_table_fkey
    FOREIGN KEY(memberships_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT membership_defaults_table_fkey
    FOREIGN KEY(membership_defaults_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT members_table_fkey
    FOREIGN KEY(members_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT grants_table_fkey
    FOREIGN KEY(grants_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT sprt_table_fkey
    FOREIGN KEY(sprt_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_owner_fkey
    FOREIGN KEY(entity_table_owner_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT limits_table_fkey
    FOREIGN KEY(limits_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT default_limits_table_fkey
    FOREIGN KEY(default_limits_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT permissions_table_fkey
    FOREIGN KEY(permissions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT default_permissions_table_fkey
    FOREIGN KEY(default_permissions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

CREATE INDEX memberships_module_database_id_idx ON metaschema_modules_public.memberships_module (database_id);

COMMENT ON CONSTRAINT entity_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT entity_table_owner_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT memberships_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT members_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT membership_defaults_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT grants_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT sprt_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT actor_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT limits_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT default_limits_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT permissions_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT default_permissions_table_fkey ON metaschema_modules_public.memberships_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.permissions_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT '',
  default_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_table_name text NOT NULL DEFAULT '',
  bitlen int NOT NULL DEFAULT 24,
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  prefix text NULL,
  get_padded_mask text NOT NULL DEFAULT '',
  get_mask text NOT NULL DEFAULT '',
  get_by_mask text NOT NULL DEFAULT '',
  get_mask_by_name text NOT NULL DEFAULT '',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT default_table_fkey
    FOREIGN KEY(default_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

CREATE INDEX permissions_module_database_id_idx ON metaschema_modules_public.permissions_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT default_table_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT actor_table_fkey ON metaschema_modules_public.permissions_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.phone_numbers_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.phone_numbers_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.phone_numbers_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.phone_numbers_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.phone_numbers_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.phone_numbers_module IS '@omit manyToMany';

CREATE INDEX phone_numbers_module_database_id_idx ON metaschema_modules_public.phone_numbers_module (database_id);

CREATE TABLE metaschema_modules_public.profiles_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT '',
  profile_permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_permissions_table_name text NOT NULL DEFAULT '',
  profile_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_grants_table_name text NOT NULL DEFAULT '',
  profile_definition_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_definition_grants_table_name text NOT NULL DEFAULT '',
  membership_type int NOT NULL,
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
  prefix text NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_permissions_table_fkey
    FOREIGN KEY(profile_permissions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_grants_table_fkey
    FOREIGN KEY(profile_grants_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_definition_grants_table_fkey
    FOREIGN KEY(profile_definition_grants_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT permissions_table_fkey
    FOREIGN KEY(permissions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT memberships_table_fkey
    FOREIGN KEY(memberships_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT profiles_module_unique 
    UNIQUE (database_id, membership_type)
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

CREATE INDEX profiles_module_database_id_idx ON metaschema_modules_public.profiles_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT profile_permissions_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT profile_grants_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT profile_definition_grants_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT entity_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT actor_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT permissions_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT memberships_table_fkey ON metaschema_modules_public.profiles_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.rls_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  api_id uuid NOT NULL DEFAULT uuid_nil(),
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  authenticate text NOT NULL DEFAULT 'authenticate',
  authenticate_strict text NOT NULL DEFAULT 'authenticate_strict',
  "current_role" text NOT NULL DEFAULT 'current_user',
  current_role_id text NOT NULL DEFAULT 'current_user_id',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT api_fkey
    FOREIGN KEY(api_id)
    REFERENCES services_public.apis (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT pschema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT api_id_uniq 
    UNIQUE (api_id)
);

COMMENT ON CONSTRAINT api_fkey ON metaschema_modules_public.rls_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.rls_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT pschema_fkey ON metaschema_modules_public.rls_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

CREATE INDEX rls_module_database_id_idx ON metaschema_modules_public.rls_module (database_id);

CREATE TABLE metaschema_modules_public.secrets_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'secrets',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.secrets_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.secrets_module IS '@omit manyToMany';

CREATE INDEX secrets_module_database_id_idx ON metaschema_modules_public.secrets_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.secrets_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.sessions_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  auth_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_default_expiration interval NOT NULL DEFAULT '30 days'::interval,
  sessions_table text NOT NULL DEFAULT 'sessions',
  session_credentials_table text NOT NULL DEFAULT 'session_credentials',
  auth_settings_table text NOT NULL DEFAULT 'app_auth_settings',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT auth_settings_table_fkey
    FOREIGN KEY(auth_settings_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.sessions_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.sessions_module IS '@omit manyToMany';

CREATE INDEX sessions_module_database_id_idx ON metaschema_modules_public.sessions_module (database_id);

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName sessionsTableBySessionsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName sessionCredentialsTableBySessionCredentialsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT auth_settings_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName authSettingsTableByAuthSettingsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.sessions_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.user_auth_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  emails_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  encrypted_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  audits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  audits_table_name text NOT NULL DEFAULT 'audit_logs',
  sign_in_function text NOT NULL DEFAULT 'sign_in',
  sign_up_function text NOT NULL DEFAULT 'sign_up',
  sign_out_function text NOT NULL DEFAULT 'sign_out',
  set_password_function text NOT NULL DEFAULT 'set_password',
  reset_password_function text NOT NULL DEFAULT 'reset_password',
  forgot_password_function text NOT NULL DEFAULT 'forgot_password',
  send_verification_email_function text NOT NULL DEFAULT 'send_verification_email',
  verify_email_function text NOT NULL DEFAULT 'verify_email',
  verify_password_function text NOT NULL DEFAULT 'verify_password',
  check_password_function text NOT NULL DEFAULT 'check_password',
  send_account_deletion_email_function text NOT NULL DEFAULT 'send_account_deletion_email',
  delete_account_function text NOT NULL DEFAULT 'confirm_delete_account',
  sign_in_one_time_token_function text NOT NULL DEFAULT 'sign_in_one_time_token',
  one_time_token_function text NOT NULL DEFAULT 'one_time_token',
  extend_token_expires text NOT NULL DEFAULT 'extend_token_expires',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT email_table_fkey
    FOREIGN KEY(emails_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT secrets_table_fkey
    FOREIGN KEY(secrets_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT encrypted_table_fkey
    FOREIGN KEY(encrypted_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.user_auth_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.user_auth_module IS '@omit manyToMany';

CREATE INDEX user_auth_module_database_id_idx ON metaschema_modules_public.user_auth_module (database_id);

COMMENT ON CONSTRAINT email_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT secrets_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT encrypted_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

CREATE TABLE metaschema_modules_public.users_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'users',
  type_table_id uuid NOT NULL DEFAULT uuid_nil(),
  type_table_name text NOT NULL DEFAULT 'role_types',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT type_table_fkey
    FOREIGN KEY(type_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.users_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.users_module IS '@omit manyToMany';

CREATE INDEX users_module_database_id_idx ON metaschema_modules_public.users_module (database_id);

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.users_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT type_table_fkey ON metaschema_modules_public.users_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.uuid_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  uuid_function text NOT NULL DEFAULT 'uuid_generate_v4',
  uuid_seed text NOT NULL,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.uuid_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.uuid_module IS '@omit manyToMany';

CREATE INDEX uuid_module_database_id_idx ON metaschema_modules_public.uuid_module (database_id);

CREATE TABLE metaschema_modules_public.hierarchy_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  chart_edges_table_id uuid NOT NULL DEFAULT uuid_nil(),
  chart_edges_table_name text NOT NULL DEFAULT '',
  hierarchy_sprt_table_id uuid NOT NULL DEFAULT uuid_nil(),
  hierarchy_sprt_table_name text NOT NULL DEFAULT '',
  chart_edge_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  chart_edge_grants_table_name text NOT NULL DEFAULT '',
  entity_table_id uuid NOT NULL,
  users_table_id uuid NOT NULL,
  prefix text NOT NULL DEFAULT 'org',
  private_schema_name text NOT NULL DEFAULT '',
  sprt_table_name text NOT NULL DEFAULT '',
  rebuild_hierarchy_function text NOT NULL DEFAULT '',
  get_subordinates_function text NOT NULL DEFAULT '',
  get_managers_function text NOT NULL DEFAULT '',
  is_manager_of_function text NOT NULL DEFAULT '',
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT chart_edges_table_fkey
    FOREIGN KEY(chart_edges_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT hierarchy_sprt_table_fkey
    FOREIGN KEY(hierarchy_sprt_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT chart_edge_grants_table_fkey
    FOREIGN KEY(chart_edge_grants_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT hierarchy_module_database_unique 
    UNIQUE (database_id)
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

CREATE INDEX hierarchy_module_database_id_idx ON metaschema_modules_public.hierarchy_module (database_id);

COMMENT ON CONSTRAINT chart_edges_table_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT hierarchy_sprt_table_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT chart_edge_grants_table_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT entity_table_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.hierarchy_module IS '@omit manyToMany';

CREATE TABLE metaschema_modules_public.table_template_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL,
  node_type text NOT NULL,
  data jsonb NOT NULL DEFAULT '{}',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.table_template_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.table_template_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT table_fkey ON metaschema_modules_public.table_template_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.table_template_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.table_template_module IS '@omit manyToMany';

CREATE INDEX table_template_module_database_id_idx ON metaschema_modules_public.table_template_module (database_id);

CREATE INDEX table_template_module_schema_id_idx ON metaschema_modules_public.table_template_module (schema_id);

CREATE INDEX table_template_module_private_schema_id_idx ON metaschema_modules_public.table_template_module (private_schema_id);

CREATE INDEX table_template_module_table_id_idx ON metaschema_modules_public.table_template_module (table_id);

CREATE INDEX table_template_module_owner_table_id_idx ON metaschema_modules_public.table_template_module (owner_table_id);

CREATE INDEX table_template_module_node_type_idx ON metaschema_modules_public.table_template_module (node_type);
