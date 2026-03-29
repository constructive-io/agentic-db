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
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX connected_accounts_module_database_id_idx ON metaschema_modules_public.connected_accounts_module (database_id);

CREATE TABLE metaschema_modules_public.crypto_addresses_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX crypto_addresses_module_database_id_idx ON metaschema_modules_public.crypto_addresses_module (database_id);

CREATE TABLE metaschema_modules_public.crypto_auth_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

CREATE INDEX crypto_auth_module_database_id_idx ON metaschema_modules_public.crypto_auth_module (database_id);

CREATE TABLE metaschema_modules_public.default_ids_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

CREATE INDEX default_ids_module_database_id_idx ON metaschema_modules_public.default_ids_module (database_id);

CREATE TABLE metaschema_modules_public.denormalized_table_field (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_table_fkey
    FOREIGN KEY(ref_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX denormalized_table_field_database_id_idx ON metaschema_modules_public.denormalized_table_field (database_id);

CREATE TABLE metaschema_modules_public.emails_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX emails_module_database_id_idx ON metaschema_modules_public.emails_module (database_id);

CREATE TABLE metaschema_modules_public.encrypted_secrets_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX encrypted_secrets_module_database_id_idx ON metaschema_modules_public.encrypted_secrets_module (database_id);

CREATE TABLE metaschema_modules_public.field_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX field_module_database_id_idx ON metaschema_modules_public.field_module (database_id);

CREATE INDEX field_module_node_type_idx ON metaschema_modules_public.field_module (node_type);

CREATE TABLE metaschema_modules_public.invites_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT emails_table_fkey
    FOREIGN KEY(emails_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT claimed_invites_table_fkey
    FOREIGN KEY(claimed_invites_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX invites_module_database_id_idx ON metaschema_modules_public.invites_module (database_id);

CREATE TABLE metaschema_modules_public.levels_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT achievements_table_fkey
    FOREIGN KEY(achievements_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT levels_table_fkey
    FOREIGN KEY(levels_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT level_requirements_table_fkey
    FOREIGN KEY(level_requirements_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX user_status_module_database_id_idx ON metaschema_modules_public.levels_module (database_id);

CREATE TABLE metaschema_modules_public.limits_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT default_table_fkey
    FOREIGN KEY(default_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX limits_module_database_id_idx ON metaschema_modules_public.limits_module (database_id);

CREATE TABLE metaschema_modules_public.membership_types_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX membership_types_module_database_id_idx ON metaschema_modules_public.membership_types_module (database_id);

CREATE TABLE metaschema_modules_public.memberships_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT membership_defaults_table_fkey
    FOREIGN KEY(membership_defaults_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT members_table_fkey
    FOREIGN KEY(members_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT grants_table_fkey
    FOREIGN KEY(grants_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT sprt_table_fkey
    FOREIGN KEY(sprt_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_owner_fkey
    FOREIGN KEY(entity_table_owner_id)
    REFERENCES metaschema_public.field (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limits_table_fkey
    FOREIGN KEY(limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT default_limits_table_fkey
    FOREIGN KEY(default_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT permissions_table_fkey
    FOREIGN KEY(permissions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT default_permissions_table_fkey
    FOREIGN KEY(default_permissions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX memberships_module_database_id_idx ON metaschema_modules_public.memberships_module (database_id);

CREATE TABLE metaschema_modules_public.permissions_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT default_table_fkey
    FOREIGN KEY(default_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX permissions_module_database_id_idx ON metaschema_modules_public.permissions_module (database_id);

CREATE TABLE metaschema_modules_public.phone_numbers_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX phone_numbers_module_database_id_idx ON metaschema_modules_public.phone_numbers_module (database_id);

CREATE TABLE metaschema_modules_public.profiles_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_permissions_table_fkey
    FOREIGN KEY(profile_permissions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_grants_table_fkey
    FOREIGN KEY(profile_grants_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT profile_definition_grants_table_fkey
    FOREIGN KEY(profile_definition_grants_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT actor_table_fkey
    FOREIGN KEY(actor_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT permissions_table_fkey
    FOREIGN KEY(permissions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT memberships_table_fkey
    FOREIGN KEY(memberships_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT profiles_module_unique 
    UNIQUE (database_id, membership_type)
);

CREATE INDEX profiles_module_database_id_idx ON metaschema_modules_public.profiles_module (database_id);

CREATE TABLE metaschema_modules_public.rls_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
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
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT pschema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT database_id_uniq 
    UNIQUE (database_id)
);

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.rls_module IS '@omit';

CREATE INDEX rls_module_database_id_idx ON metaschema_modules_public.rls_module (database_id);

CREATE TABLE metaschema_modules_public.secrets_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX secrets_module_database_id_idx ON metaschema_modules_public.secrets_module (database_id);

CREATE TABLE metaschema_modules_public.sessions_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT auth_settings_table_fkey
    FOREIGN KEY(auth_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX sessions_module_database_id_idx ON metaschema_modules_public.sessions_module (database_id);

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName sessionsTableBySessionsTableId';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName sessionCredentialsTableBySessionCredentialsTableId';

COMMENT ON CONSTRAINT auth_settings_table_fkey ON metaschema_modules_public.sessions_module IS '@fieldName authSettingsTableByAuthSettingsTableId';

CREATE TABLE metaschema_modules_public.user_auth_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT secrets_table_fkey
    FOREIGN KEY(secrets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT encrypted_table_fkey
    FOREIGN KEY(encrypted_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT session_credentials_table_fkey
    FOREIGN KEY(session_credentials_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX user_auth_module_database_id_idx ON metaschema_modules_public.user_auth_module (database_id);

COMMENT ON CONSTRAINT email_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT secrets_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT encrypted_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.user_auth_module IS '@omit';

CREATE TABLE metaschema_modules_public.users_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT type_table_fkey
    FOREIGN KEY(type_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX users_module_database_id_idx ON metaschema_modules_public.users_module (database_id);

CREATE TABLE metaschema_modules_public.hierarchy_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT hierarchy_sprt_table_fkey
    FOREIGN KEY(hierarchy_sprt_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT chart_edge_grants_table_fkey
    FOREIGN KEY(chart_edge_grants_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT hierarchy_module_database_unique 
    UNIQUE (database_id)
);

CREATE INDEX hierarchy_module_database_id_idx ON metaschema_modules_public.hierarchy_module (database_id);

CREATE TABLE metaschema_modules_public.table_template_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
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
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
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

CREATE INDEX table_template_module_database_id_idx ON metaschema_modules_public.table_template_module (database_id);

CREATE INDEX table_template_module_schema_id_idx ON metaschema_modules_public.table_template_module (schema_id);

CREATE INDEX table_template_module_private_schema_id_idx ON metaschema_modules_public.table_template_module (private_schema_id);

CREATE INDEX table_template_module_table_id_idx ON metaschema_modules_public.table_template_module (table_id);

CREATE INDEX table_template_module_owner_table_id_idx ON metaschema_modules_public.table_template_module (owner_table_id);

CREATE INDEX table_template_module_node_type_idx ON metaschema_modules_public.table_template_module (node_type);

CREATE TABLE metaschema_modules_public.secure_table_provision (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text DEFAULT NULL,
  node_type text DEFAULT NULL,
  use_rls boolean NOT NULL DEFAULT true,
  node_data jsonb NOT NULL DEFAULT '{}',
  fields jsonb[] NOT NULL DEFAULT '{}',
  grant_roles text[] NOT NULL DEFAULT ARRAY['authenticated'],
  grant_privileges jsonb[] NOT NULL DEFAULT '{}',
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
    REFERENCES metaschema_public.table (id)
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

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_data IS 'Configuration passed to the generator function for field creation (only used when node_type is set). Known keys include: field_name (text, default ''id'') for DataId, owner_field_name (text, default ''owner_id'') for DataDirectOwner/DataOwnershipInEntity, entity_field_name (text, default ''entity_id'') for DataEntityMembership/DataOwnershipInEntity, include_id (boolean, default true) for most node_types, include_user_fk (boolean, default true) to add FK to users table, create_index (boolean, default true) to create btree indexes on FK fields for join and cascade performance. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.fields IS 'PostgreSQL array of jsonb field definition objects to create on the target table. Each object has keys: "name" (text, required), "type" (text, required), "default" (text, optional), "is_required" (boolean, optional, defaults to false), "min" (float, optional), "max" (float, optional), "regexp" (text, optional), "index" (boolean, optional, defaults to false — creates a btree index on the field). min/max generate CHECK constraints: for text/citext they constrain character_length, for integer/float types they constrain the value. regexp generates a CHECK (col ~ pattern) constraint for text/citext. Fields are created via metaschema.create_field() after any node_type generator runs, and their IDs are appended to out_fields. Example: ARRAY[''{"name":"username","type":"citext","max":256,"regexp":"^[a-z0-9_]+$"}''::jsonb, ''{"name":"score","type":"integer","min":0,"max":100}''::jsonb]. Defaults to ''{}'' (no additional fields).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_roles IS 'Database roles to grant privileges to. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated''].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_privileges IS 'PostgreSQL array of jsonb [privilege, columns] tuples defining table grants. Examples: ARRAY[''["select","*"]''::jsonb, ''["insert","*"]''::jsonb] for full access, or ARRAY[''["update",["name","bio"]]''::jsonb] for column-level grants. "*" means all columns; an array means column-level grant. Defaults to ''{}'' (no grants). Type safety is enforced by PostgreSQL at INSERT time.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_type IS 'Policy generator type, e.g. ''AuthzEntityMembership'', ''AuthzMembership'', ''AuthzAllowAll''. NULL means no policy is created. When set, the trigger automatically enables RLS on the target table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_privileges IS 'Privileges the policy applies to, e.g. ARRAY[''select'',''update'']. NULL means privileges are derived from the grant_privileges verbs.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_role IS 'Role the policy targets. NULL means it falls back to the first role in grant_roles.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_permissive IS 'Whether the policy is PERMISSIVE (true) or RESTRICTIVE (false). Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_name IS 'Custom suffix for the generated policy name. When NULL and policy_type is set, the trigger auto-derives a suffix from policy_type by stripping the Authz prefix and underscoring the remainder (e.g. AuthzDirectOwner becomes direct_owner, producing policy names like auth_sel_direct_owner). When explicitly set, the value is passed through as-is to metaschema.create_policy name parameter. This ensures multiple policies on the same table do not collide (e.g. AuthzDirectOwner + AuthzPublishable each get unique names).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policy_data IS 'Opaque configuration passed through to metaschema.create_policy(). Structure varies by policy_type and is not interpreted by this trigger. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.out_fields IS 'Output column populated by the trigger after field creation. Contains the UUIDs of the metaschema fields created on the target table by this provision row''s generator. NULL when node_type is NULL or before the trigger runs. Callers should not set this directly.';

CREATE INDEX secure_table_provision_database_id_idx ON metaschema_modules_public.secure_table_provision (database_id);

CREATE INDEX secure_table_provision_table_id_idx ON metaschema_modules_public.secure_table_provision (table_id);

CREATE INDEX secure_table_provision_node_type_idx ON metaschema_modules_public.secure_table_provision (node_type);

CREATE TABLE metaschema_modules_public.relation_provision (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  relation_type text NOT NULL CHECK (relation_type IN ('RelationBelongsTo', 'RelationHasOne', 'RelationHasMany', 'RelationManyToMany')),
  source_table_id uuid NOT NULL,
  target_table_id uuid NOT NULL,
  field_name text DEFAULT NULL,
  delete_action text DEFAULT NULL,
  is_required boolean NOT NULL DEFAULT true,
  api_required boolean NOT NULL DEFAULT false,
  junction_table_id uuid NOT NULL DEFAULT uuid_nil(),
  junction_table_name text DEFAULT NULL,
  junction_schema_id uuid DEFAULT NULL,
  source_field_name text DEFAULT NULL,
  target_field_name text DEFAULT NULL,
  use_composite_key boolean NOT NULL DEFAULT false,
  create_index boolean NOT NULL DEFAULT true,
  expose_in_api boolean NOT NULL DEFAULT true,
  node_type text DEFAULT NULL,
  node_data jsonb NOT NULL DEFAULT '{}',
  grant_roles text[] NOT NULL DEFAULT ARRAY['authenticated'],
  grant_privileges jsonb[] NOT NULL DEFAULT ARRAY['["select","*"]'::jsonb, '["insert","*"]'::jsonb, '["delete","*"]'::jsonb],
  policy_type text DEFAULT NULL,
  policy_privileges text[] DEFAULT NULL,
  policy_role text DEFAULT NULL,
  policy_permissive boolean NOT NULL DEFAULT true,
  policy_name text DEFAULT NULL,
  policy_data jsonb NOT NULL DEFAULT '{}',
  out_field_id uuid DEFAULT NULL,
  out_junction_table_id uuid DEFAULT NULL,
  out_source_field_id uuid DEFAULT NULL,
  out_target_field_id uuid DEFAULT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT source_table_fkey
    FOREIGN KEY(source_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT target_table_fkey
    FOREIGN KEY(target_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.relation_provision IS 'Provisions relational structure between tables. Supports four relation types:
     - RelationBelongsTo: adds a FK field on the source table referencing the target table (child perspective: "tasks belongs to projects" -> tasks.project_id).
     - RelationHasMany: adds a FK field on the target table referencing the source table (parent perspective: "projects has many tasks" -> tasks.project_id). Inverse of BelongsTo.
     - RelationHasOne: adds a FK field with a unique constraint on the source table referencing the target table. Also supports shared-primary-key patterns where the FK field IS the primary key (set field_name to the existing PK field name).
     - RelationManyToMany: creates a junction table with FK fields to both source and target tables, delegating table creation and security to secure_table_provision.
     This is a one-and-done structural provisioner. To layer additional security onto junction tables after creation, use secure_table_provision directly.
     All operations are graceful: existing fields, FK constraints, and unique constraints are reused if found.
     The trigger never injects values the caller did not provide. All security config is forwarded to secure_table_provision as-is.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.id IS 'Unique identifier for this relation provision row.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.database_id IS 'The database this relation belongs to. Required. Must match the database of both source_table_id and target_table_id.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.relation_type IS 'The type of relation to create. Uses SuperCase naming matching the node_type_registry:
     - RelationBelongsTo: creates a FK field on source_table referencing target_table (e.g., tasks belongs to projects -> tasks.project_id). Field name auto-derived from target table.
     - RelationHasMany: creates a FK field on target_table referencing source_table (e.g., projects has many tasks -> tasks.project_id). Field name auto-derived from source table. Inverse of BelongsTo — same FK, different perspective.
     - RelationHasOne: creates a FK field + unique constraint on source_table referencing target_table (e.g., user_settings has one user -> user_settings.user_id with UNIQUE). Also supports shared-primary-key patterns (e.g., user_profiles.id = users.id) by setting field_name to the existing PK field.
     - RelationManyToMany: creates a junction table with FK fields to both tables (e.g., projects and tags -> project_tags table).
     Each relation type uses a different subset of columns on this table. Required.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.source_table_id IS 'The source table in the relation. Required.
     - RelationBelongsTo: the table that receives the FK field (e.g., tasks in "tasks belongs to projects").
     - RelationHasMany: the parent table being referenced (e.g., projects in "projects has many tasks"). The FK field is created on the target table.
     - RelationHasOne: the table that receives the FK field + unique constraint (e.g., user_settings in "user_settings has one user").
     - RelationManyToMany: one of the two tables being joined (e.g., projects in "projects and tags"). The junction table will have a FK field referencing this table.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.target_table_id IS 'The target table in the relation. Required.
     - RelationBelongsTo: the table being referenced by the FK (e.g., projects in "tasks belongs to projects").
     - RelationHasMany: the table that receives the FK field (e.g., tasks in "projects has many tasks").
     - RelationHasOne: the table being referenced by the FK (e.g., users in "user_settings has one user").
     - RelationManyToMany: the other table being joined (e.g., tags in "projects and tags"). The junction table will have a FK field referencing this table.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.field_name IS 'FK field name for RelationBelongsTo, RelationHasOne, and RelationHasMany.
     - RelationBelongsTo/RelationHasOne: if NULL, auto-derived from the target table name (e.g., target "projects" derives "project_id").
     - RelationHasMany: if NULL, auto-derived from the source table name (e.g., source "projects" derives "project_id").
     For RelationHasOne shared-primary-key patterns, set field_name to the existing PK field (e.g., "id") so the FK reuses it.
     Ignored for RelationManyToMany — use source_field_name/target_field_name instead.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.delete_action IS 'FK delete action for RelationBelongsTo, RelationHasOne, and RelationHasMany. One of: c (CASCADE), r (RESTRICT), n (SET NULL), d (SET DEFAULT), a (NO ACTION). Required — the trigger raises an error if not provided. The caller must explicitly choose the cascade behavior; there is no default. Ignored for RelationManyToMany (junction FK fields always use CASCADE).';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.is_required IS 'Whether the FK field is NOT NULL. Defaults to true.
     - RelationBelongsTo: set to false for optional associations (e.g., tasks.assignee_id that can be NULL).
     - RelationHasMany: set to false if the child can exist without a parent.
     - RelationHasOne: typically true.
     Ignored for RelationManyToMany (junction FK fields are always required).';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.api_required IS 'Whether the FK field should be required at the API level even though it is nullable at the database level. Defaults to false.
     When true and is_required is false, the field is created as nullable (allowing SET NULL cascade) but a @requiredInput smart tag is added so PostGraphile treats it as non-null in create/update input types.
     When is_required is true, api_required is ignored (the field is already required at both levels).
     Ignored for RelationManyToMany (junction FK fields are always required).';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_table_id IS 'For RelationManyToMany: an existing junction table to use. Defaults to uuid_nil().
     - When uuid_nil(): the trigger creates a new junction table via secure_table_provision using junction_table_name.
     - When set to a valid table UUID: the trigger skips table creation and only adds FK fields, composite key (if use_composite_key is true), and security to the existing table.
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_table_name IS 'For RelationManyToMany: name of the junction table to create or look up. If NULL, auto-derived from source and target table names using inflection_db (e.g., "projects" + "tags" derives "project_tags"). Only used when junction_table_id is uuid_nil(). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.junction_schema_id IS 'For RelationManyToMany: schema for the junction table. If NULL, defaults to the source table''s schema. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.source_field_name IS 'For RelationManyToMany: FK field name on the junction table referencing the source table. If NULL, auto-derived from the source table name using inflection_db.get_foreign_key_field_name() (e.g., source table "projects" derives "project_id"). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.target_field_name IS 'For RelationManyToMany: FK field name on the junction table referencing the target table. If NULL, auto-derived from the target table name using inflection_db.get_foreign_key_field_name() (e.g., target table "tags" derives "tag_id"). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.use_composite_key IS 'For RelationManyToMany: whether to create a composite primary key from the two FK fields (source + target) on the junction table. Defaults to false.
     - When true: the trigger calls metaschema.pk() with ARRAY[source_field_id, target_field_id] to create a composite PK. No separate id column is created. This enforces uniqueness of the pair and is suitable for simple junction tables.
     - When false: no primary key is created by the trigger. The caller should provide node_type=''DataId'' to create a UUID primary key, or handle the PK strategy via a separate secure_table_provision row.
     use_composite_key and node_type=''DataId'' are mutually exclusive — using both would create two conflicting PKs.
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.create_index IS 'Whether to create a btree index on FK fields created by this relation. Defaults to true.
     PostgreSQL does not automatically index foreign key columns (only the referenced PK side is indexed).
     Without indexes on FK columns, JOINs, CASCADE deletes, and RLS policy lookups perform sequential scans.
     - RelationBelongsTo: creates an index on the FK field on the source table.
     - RelationHasMany: creates an index on the FK field on the target table.
     - RelationHasOne: skipped — the unique constraint already creates an implicit index.
     - RelationManyToMany: creates indexes on both FK fields on the junction table.
     Set to false only for very small tables or write-heavy tables where index maintenance cost outweighs read performance.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.expose_in_api IS 'For RelationManyToMany: whether to expose the M:N shortcut fields in the GraphQL API. Defaults to true.
     When true, sets @behavior +manyToMany on the junction table smart_tags so PostGraphile generates
     clean M:N connection fields (e.g., event.contacts instead of event.contactEventsByEventId).
     When false (or toggled off via UPDATE), the behavior tag is removed and the M:N fields disappear from GraphQL.
     Toggling is supported: UPDATE expose_in_api to true/false and the smart tag is added/removed automatically.
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.node_type IS 'For RelationManyToMany: which generator to invoke for field creation on the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Examples: DataId (creates UUID primary key), DataDirectOwner (creates owner_id field), DataEntityMembership (creates entity_id field), DataOwnershipInEntity (creates both owner_id and entity_id), DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete.
     NULL means no field creation beyond the FK fields (and composite key if use_composite_key is true).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.node_data IS 'For RelationManyToMany: configuration passed to the generator function for field creation on the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Only used when node_type is set. Structure varies by node_type. Examples:
     - DataId: {"field_name": "id"} (default field name is ''id'')
     - DataEntityMembership: {"entity_field_name": "entity_id", "include_id": false, "include_user_fk": true}
     - DataDirectOwner: {"owner_field_name": "owner_id"}
     Defaults to ''{}'' (empty object).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grant_roles IS 'For RelationManyToMany: database roles to grant privileges to on the junction table. Forwarded to secure_table_provision as-is. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated'']. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grant_privileges IS 'For RelationManyToMany: privilege grants for the junction table. Forwarded to secure_table_provision as-is. Format: PostgreSQL array of jsonb [privilege, columns] tuples. Examples: ARRAY[''["select","*"]''::jsonb, ''["insert","*"]''::jsonb] for full access, or ARRAY[''["update",["name","bio"]]''::jsonb] for column-level grants. "*" means all columns. Defaults to select/insert/delete for all columns. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_type IS 'For RelationManyToMany: RLS policy type for the junction table. Forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value.
     Examples: AuthzEntityMembership, AuthzMembership, AuthzAllowAll, AuthzDirectOwner, AuthzOrgHierarchy.
     NULL means no policy is created — the junction table will have RLS enabled but no policies (unless added separately via secure_table_provision).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_privileges IS 'For RelationManyToMany: privileges the policy applies to, e.g. ARRAY[''select'',''insert'',''delete'']. Forwarded to secure_table_provision as-is. NULL means privileges are derived from the grant_privileges verbs by secure_table_provision. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_role IS 'For RelationManyToMany: database role the policy targets, e.g. ''authenticated''. Forwarded to secure_table_provision as-is. NULL means secure_table_provision falls back to the first role in grant_roles. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_permissive IS 'For RelationManyToMany: whether the policy is PERMISSIVE (true) or RESTRICTIVE (false). Forwarded to secure_table_provision as-is. Defaults to true. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_name IS 'For RelationManyToMany: custom suffix for the generated policy name. Forwarded to secure_table_provision as-is. When NULL and policy_type is set, secure_table_provision auto-derives a suffix from policy_type (e.g. AuthzDirectOwner becomes direct_owner, producing policy names like auth_sel_direct_owner). When explicitly set, used as-is. This ensures multiple policies on the same junction table do not collide. Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policy_data IS 'For RelationManyToMany: opaque policy configuration forwarded to secure_table_provision as-is. The trigger does not interpret or validate this value. Structure varies by policy_type. Examples:
     - AuthzEntityMembership: {"entity_field": "entity_id", "membership_type": 2}
     - AuthzDirectOwner: {"owner_field": "owner_id"}
     - AuthzMembership: {"membership_type": 2}
     Defaults to ''{}'' (empty object).
     Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_field_id IS 'Output column for RelationBelongsTo/RelationHasOne/RelationHasMany: the UUID of the FK field created (or found). For BelongsTo/HasOne this is on the source table; for HasMany this is on the target table. Populated by the trigger. NULL for RelationManyToMany. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_junction_table_id IS 'Output column for RelationManyToMany: the UUID of the junction table created (or found). Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_source_field_id IS 'Output column for RelationManyToMany: the UUID of the FK field on the junction table referencing the source table. Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.out_target_field_id IS 'Output column for RelationManyToMany: the UUID of the FK field on the junction table referencing the target table. Populated by the trigger. NULL for RelationBelongsTo/RelationHasOne. Callers should not set this directly.';

CREATE INDEX relation_provision_database_id_idx ON metaschema_modules_public.relation_provision (database_id);

CREATE INDEX relation_provision_relation_type_idx ON metaschema_modules_public.relation_provision (relation_type);

CREATE INDEX relation_provision_source_table_id_idx ON metaschema_modules_public.relation_provision (source_table_id);

CREATE INDEX relation_provision_target_table_id_idx ON metaschema_modules_public.relation_provision (target_table_id);

CREATE TABLE metaschema_modules_public.blueprint_template (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  name text NOT NULL,
  version text NOT NULL DEFAULT '1.0.0',
  display_name text NOT NULL,
  description text,
  owner_id uuid NOT NULL,
  visibility text NOT NULL DEFAULT 'private' CHECK (visibility IN ('private', 'public')),
  categories text[] NOT NULL DEFAULT '{}',
  tags text[] NOT NULL DEFAULT '{}',
  definition jsonb NOT NULL,
  definition_schema_version text NOT NULL DEFAULT '1',
  source text NOT NULL DEFAULT 'user' CHECK (source IN ('user', 'system', 'agent')),
  complexity text DEFAULT NULL CHECK (
    complexity IS NULL
      OR complexity IN ('simple', 'moderate', 'complex')
  ),
  copy_count int NOT NULL DEFAULT 0,
  fork_count int NOT NULL DEFAULT 0,
  forked_from_id uuid DEFAULT NULL,
  definition_hash uuid,
  table_hashes jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT blueprint_template_unique_owner_name_version 
    UNIQUE (owner_id, name, version),
  CONSTRAINT blueprint_template_forked_from_fkey
    FOREIGN KEY(forked_from_id)
    REFERENCES metaschema_modules_public.blueprint_template (id)
);

COMMENT ON TABLE metaschema_modules_public.blueprint_template IS 'A shareable, versioned schema recipe for the blueprint marketplace. Templates define arrays of secure_table_provision + relation_provision inputs that together describe a complete domain schema (e.g. e-commerce, telemedicine, habit tracker). Templates are never executed directly — they are copied into a blueprint first via copy_template_to_blueprint(). Can be private (owner-only) or public (marketplace-visible).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.id IS 'Unique identifier for this template.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.name IS 'Machine-readable name for the template (e.g. e_commerce_basic). Must be unique per owner + version.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.version IS 'Semantic version string. Defaults to 1.0.0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.display_name IS 'Human-readable display name for the template (e.g. E-Commerce Basic).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.description IS 'Optional description of what the template provisions.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.owner_id IS 'The user who created or published this template.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.visibility IS 'Access control for the template. private: only the owner can see and copy. public: anyone can browse and copy from the marketplace. Defaults to private.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.categories IS 'Domain categories for marketplace browsing (e.g. e-commerce, healthcare, social). Defaults to empty array.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.tags IS 'Freeform tags for search and discovery (e.g. products, orders, payments). Defaults to empty array.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition IS 'The blueprint definition as a JSONB document. Contains tables[] (each with nodes[] for data behaviors via string shorthand or {"$type": "...", "data": {...}} objects, fields[], grants[], and policies[] using {"$type": "...", "data": {...}}), and relations[] (using $type for relation_type with junction config in data). This is the core payload that gets copied into a blueprint for execution.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition_schema_version IS 'Version of the definition format schema. Used for forward-compatible parsing. Defaults to 1.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.source IS 'Provenance of the template. user: manually created by a human. system: official curated template from the Constructive team. agent: AI-generated. Defaults to user.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.complexity IS 'Complexity indicator for marketplace filtering. simple: 3-5 tables. moderate: 6-12 tables. complex: 13+ tables. NULL if not categorized.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.copy_count IS 'Denormalized count of how many blueprints have been created from this template via copy_template_to_blueprint(). Incremented automatically. Defaults to 0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.fork_count IS 'Denormalized count of how many derivative templates have been forked from this template. Defaults to 0.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.forked_from_id IS 'If this template was forked from another template, the ID of the parent. NULL for original templates.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.created_at IS 'Timestamp when this template was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.definition_hash IS 'UUIDv5 Merkle root hash of the definition. Computed automatically via trigger from the ordered table_hashes. Used for content-addressable deduplication, provenance tracking, and cross-blueprint structural comparison. NULL columns are backend-computed — clients should never set this directly.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.table_hashes IS 'JSONB map of table ref names to their individual UUIDv5 content hashes (e.g. {"products": "uuid", "categories": "uuid"}). Each table hash is computed from the canonical jsonb::text of the table entry. Enables structural comparison at the table level across different blueprints. Backend-computed via trigger.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_template.updated_at IS 'Timestamp when this template was last modified.';

CREATE INDEX blueprint_template_owner_id_idx ON metaschema_modules_public.blueprint_template (owner_id);

CREATE INDEX blueprint_template_visibility_idx ON metaschema_modules_public.blueprint_template (visibility);

CREATE INDEX blueprint_template_forked_from_id_idx ON metaschema_modules_public.blueprint_template (forked_from_id);

CREATE INDEX blueprint_template_categories_idx ON metaschema_modules_public.blueprint_template USING gin (categories);

CREATE INDEX blueprint_template_tags_idx ON metaschema_modules_public.blueprint_template USING gin (tags);

CREATE INDEX blueprint_template_definition_hash_idx ON metaschema_modules_public.blueprint_template (definition_hash);

CREATE TABLE metaschema_modules_public.blueprint (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  owner_id uuid NOT NULL,
  database_id uuid NOT NULL,
  name text NOT NULL,
  display_name text NOT NULL,
  description text,
  definition jsonb NOT NULL,
  template_id uuid DEFAULT NULL,
  status text NOT NULL DEFAULT 'draft' CHECK (status IN ('draft', 'constructed', 'failed')),
  constructed_at timestamptz,
  error_details text,
  ref_map jsonb NOT NULL DEFAULT '{}',
  constructed_definition jsonb,
  definition_hash uuid,
  table_hashes jsonb,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT blueprint_unique_database_name 
    UNIQUE (database_id, name),
  CONSTRAINT blueprint_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT blueprint_template_fkey
    FOREIGN KEY(template_id)
    REFERENCES metaschema_modules_public.blueprint_template (id)
);

COMMENT ON TABLE metaschema_modules_public.blueprint IS 'An owned, executable blueprint scoped to a specific database. Created by copying from a blueprint_template via copy_template_to_blueprint() or built from scratch. The owner can customize the definition before executing it with construct_blueprint(). Each blueprint tracks its execution status (draft/constructed/failed) and stores the ref_map of created table IDs after construction.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.id IS 'Unique identifier for this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.owner_id IS 'The user who owns this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.database_id IS 'The database this blueprint is scoped to. Tables created by construct_blueprint() are provisioned in this database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.name IS 'Machine-readable name for the blueprint. Must be unique per database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.display_name IS 'Human-readable display name for the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.description IS 'Optional description of the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition IS 'The blueprint definition as a JSONB document. Same format as blueprint_template.definition: contains tables[] (with nodes[], fields[], grants[], policies[] using $type) and relations[] (using $type). This is a mutable copy that the owner can customize before executing.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.template_id IS 'If this blueprint was created by copying a template, the ID of the source template. NULL if built from scratch.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.status IS 'Execution state of the blueprint. draft: not yet executed (definition can still be modified). constructed: successfully executed via construct_blueprint(). failed: execution failed (see error_details). Defaults to draft.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.constructed_at IS 'Timestamp when construct_blueprint() successfully completed. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.error_details IS 'Error message from the most recent failed construct_blueprint() attempt. NULL unless status is failed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.ref_map IS 'Mapping of ref names to created table UUIDs, populated by construct_blueprint() after successful execution. Format: {"products": "uuid", "categories": "uuid", ...}. Defaults to empty object.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.constructed_definition IS 'Immutable snapshot of the definition at construct-time. Preserved so the exact definition that was executed is recorded even if the user later modifies the definition for re-execution. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.created_at IS 'Timestamp when this blueprint was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition_hash IS 'UUIDv5 Merkle root hash of the definition. Computed automatically via trigger from the ordered table_hashes. Used for content-addressable deduplication and provenance tracking. Backend-computed — clients should never set this directly.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.table_hashes IS 'JSONB map of table ref names to their individual UUIDv5 content hashes. Each table hash is computed from the canonical jsonb::text of the table entry. Enables structural comparison at the table level across blueprints and templates. Backend-computed via trigger.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.updated_at IS 'Timestamp when this blueprint was last modified.';

CREATE INDEX blueprint_owner_id_idx ON metaschema_modules_public.blueprint (owner_id);

CREATE INDEX blueprint_database_id_idx ON metaschema_modules_public.blueprint (database_id);

CREATE INDEX blueprint_template_id_idx ON metaschema_modules_public.blueprint (template_id);

CREATE INDEX blueprint_status_idx ON metaschema_modules_public.blueprint (status);

CREATE INDEX blueprint_definition_hash_idx ON metaschema_modules_public.blueprint (definition_hash);

CREATE FUNCTION metaschema_modules_public.copy_template_to_blueprint(
  template_id uuid,
  database_id uuid,
  owner_id uuid,
  name_override text DEFAULT NULL,
  display_name_override text DEFAULT NULL
) RETURNS uuid AS $EOFCODE$
#variable_conflict use_variable
DECLARE
    v_template metaschema_modules_public.blueprint_template;
    v_blueprint_id uuid;
    v_blueprint_name text;
    v_blueprint_display_name text;
BEGIN
    -- Load the template
    SELECT * INTO v_template
    FROM metaschema_modules_public.blueprint_template
    WHERE id = template_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'COPY_TEMPLATE_TO_BLUEPRINT: template not found for id %', template_id;
    END IF;

    -- Visibility check: owner can always copy, others need public visibility
    IF v_template.owner_id != owner_id AND v_template.visibility != 'public' THEN
        RAISE EXCEPTION 'COPY_TEMPLATE_TO_BLUEPRINT: template % is private and not owned by %', template_id, owner_id;
    END IF;

    -- Resolve names
    v_blueprint_name := COALESCE(name_override, v_template.name);
    v_blueprint_display_name := COALESCE(display_name_override, v_template.display_name);

    -- Create the blueprint with a copy of the template definition
    INSERT INTO metaschema_modules_public.blueprint (
        owner_id,
        database_id,
        name,
        display_name,
        description,
        definition,
        template_id,
        status
    ) VALUES (
        owner_id,
        database_id,
        v_blueprint_name,
        v_blueprint_display_name,
        v_template.description,
        v_template.definition,
        template_id,
        'draft'
    )
    RETURNING id INTO v_blueprint_id;

    -- Increment copy_count on the template
    UPDATE metaschema_modules_public.blueprint_template
    SET copy_count = copy_count + 1,
        updated_at = now()
    WHERE id = template_id;

    RETURN v_blueprint_id;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.copy_template_to_blueprint IS 'Creates a new blueprint by copying a template definition. Checks visibility: owners can always copy their own templates, others require public visibility. Increments the template copy_count. Returns the new blueprint ID.';

CREATE FUNCTION metaschema_modules_public.construct_blueprint(
  blueprint_id uuid,
  schema_id uuid DEFAULT uuid_nil()
) RETURNS jsonb AS $EOFCODE$
#variable_conflict use_variable
DECLARE
    v_blueprint metaschema_modules_public.blueprint;
    v_definition jsonb;
    v_ref_map jsonb := '{}';

    -- Phase 1: tables
    v_table_entry jsonb;
    v_table_ref text;
    v_table_name text;
    v_table_use_rls boolean;
    v_table_grant_roles text[];
    v_table_grants jsonb;

    -- Nodes iteration
    v_node_entry jsonb;
    v_node_type text;
    v_node_data jsonb;
    v_node_idx integer;

    -- Policy iteration
    v_policy_entry jsonb;
    v_policy_type text;
    v_policy_data jsonb;
    v_policy_idx integer;

    -- Provision results
    v_provision metaschema_modules_public.secure_table_provision;
    v_table_id uuid;

    -- Fields conversion
    v_fields_array jsonb[];
    v_field_item jsonb;
    v_grant_array jsonb[];
    v_grant_item jsonb;

    -- Phase 2: relations
    v_relation_entry jsonb;
    v_relation_type text;
    v_source_ref text;
    v_target_ref text;
    v_source_table_id uuid;
    v_target_table_id uuid;
    v_field_name text;
    v_delete_action text;
    v_is_required boolean;
    v_junction_table_name text;
    v_rel_source_field_name text;
    v_rel_target_field_name text;
    v_rel_node_type text;
    v_rel_node_data jsonb;
    v_rel_policy_type text;
    v_rel_policy_data jsonb;
    v_rel_policy_permissive boolean;
    v_rel_grant_roles text[];
    v_rel_grant_privileges jsonb;
    v_rel_grant_array jsonb[];

    -- Phase 3: indexes
    v_index_entry jsonb;
    v_idx_table_ref text;
    v_idx_table_id uuid;
    v_idx_field_id uuid;
    v_idx_field_ids uuid[];
    v_idx_column_name text;
    v_idx_access_method text;
    v_idx_op_classes text[];
    v_idx_options jsonb;
    v_idx_name text;
    v_idx_is_unique boolean;
    v_idx_columns jsonb;
    v_idx_col jsonb;
    v_idx_col_idx integer;

    -- Phase 4: full_text_search
    v_fts_entry jsonb;
    v_fts_table_ref text;
    v_fts_table_id uuid;
    v_fts_field_id uuid;
    v_fts_source_field_ids uuid[];
    v_fts_weights text[];
    v_fts_langs text[];
    v_fts_source jsonb;
    v_fts_source_idx integer;
    v_fts_source_field_id uuid;
BEGIN
    -- Load the blueprint
    SELECT * INTO v_blueprint
    FROM metaschema_modules_public.blueprint
    WHERE id = blueprint_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: blueprint not found for id %', blueprint_id;
    END IF;

    -- Can only construct draft blueprints
    IF v_blueprint.status != 'draft' THEN
        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: blueprint % has status %, expected draft', blueprint_id, v_blueprint.status;
    END IF;

    v_definition := v_blueprint.definition;

    BEGIN
        -- =====================================================================
        -- PHASE 1: Create tables
        -- For each table in definition.tables:
        --   nodes[] entries define the table data behaviors (Data* node types)
        --     - String entries: type with default params (e.g. "DataTimestamps")
        --     - Object entries: {"$type": "...", "data": {...}} with params
        --   First node creates the table (with fields + first policy)
        --   Remaining nodes augment the existing table
        --   policies[] entries define RLS policies using $type + data
        -- =====================================================================

        IF v_definition ? 'tables' AND jsonb_array_length(v_definition->'tables') > 0 THEN
            FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP

                v_table_ref := v_table_entry->>'ref';
                v_table_name := v_table_entry->>'table_name';
                v_table_use_rls := COALESCE((v_table_entry->>'use_rls')::boolean, true);

                -- Resolve grant_roles
                IF v_table_entry ? 'grant_roles' THEN
                    v_table_grant_roles := ARRAY(
                        SELECT jsonb_array_elements_text(v_table_entry->'grant_roles')
                    );
                ELSE
                    v_table_grant_roles := ARRAY['authenticated'];
                END IF;

                -- Resolve grants (convert from jsonb array to jsonb[])
                v_table_grants := COALESCE(v_table_entry->'grants', '[]'::jsonb);
                v_grant_array := '{}';
                IF jsonb_array_length(v_table_grants) > 0 THEN
                    FOR v_grant_item IN SELECT jsonb_array_elements(v_table_grants) LOOP
                        v_grant_array := array_append(v_grant_array, v_grant_item);
                    END LOOP;
                END IF;

                -- Convert fields from jsonb array to jsonb[] PostgreSQL array
                v_fields_array := '{}';
                IF v_table_entry ? 'fields' AND jsonb_array_length(v_table_entry->'fields') > 0 THEN
                    FOR v_field_item IN SELECT jsonb_array_elements(v_table_entry->'fields') LOOP
                        v_fields_array := array_append(v_fields_array, v_field_item);
                    END LOOP;
                END IF;

                -- =============================================================
                -- Process nodes[] array
                -- Each entry is either:
                --   - A string: type with default params ("DataOwnershipInEntity")
                --   - An object: {"$type": "...", "data": {...}} with params
                -- First node creates the table; remaining nodes augment it
                -- =============================================================

                v_node_idx := 0;

                IF v_table_entry ? 'nodes' AND jsonb_array_length(v_table_entry->'nodes') > 0 THEN

                    -- Normalize first node entry
                    v_node_entry := v_table_entry->'nodes'->0;
                    IF jsonb_typeof(v_node_entry) = 'string' THEN
                        v_node_type := v_node_entry #>> '{}';
                        v_node_data := '{}'::jsonb;
                    ELSE
                        v_node_type := v_node_entry->>'$type';
                        v_node_data := COALESCE(v_node_entry->'data', '{}'::jsonb);
                    END IF;

                    -- First node + first policy creates the table
                    IF v_table_entry ? 'policies' AND jsonb_array_length(v_table_entry->'policies') > 0 THEN
                        v_policy_entry := v_table_entry->'policies'->0;
                        v_policy_type := v_policy_entry->>'$type';
                        v_policy_data := COALESCE(v_policy_entry->'data', '{}'::jsonb);

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, schema_id, table_name,
                            node_type, node_data, fields,
                            grant_roles, grant_privileges, use_rls,
                            policy_type, policy_privileges, policy_role,
                            policy_permissive, policy_name, policy_data
                        ) VALUES (
                            v_blueprint.database_id,
                            schema_id,
                            v_table_name,
                            v_node_type,
                            v_node_data,
                            v_fields_array,
                            v_table_grant_roles,
                            v_grant_array,
                            v_table_use_rls,
                            v_policy_type,
                            CASE WHEN v_policy_entry ? 'privileges'
                                THEN ARRAY(SELECT jsonb_array_elements_text(v_policy_entry->'privileges'))
                                ELSE NULL
                            END,
                            v_policy_entry->>'policy_role',
                            COALESCE((v_policy_entry->>'permissive')::boolean, true),
                            v_policy_entry->>'policy_name',
                            v_policy_data
                        )
                        RETURNING * INTO v_provision;

                        v_policy_idx := 1;
                    ELSE
                        -- No policies -- just create the table with first node
                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, schema_id, table_name,
                            node_type, node_data, fields,
                            grant_roles, grant_privileges, use_rls
                        ) VALUES (
                            v_blueprint.database_id,
                            schema_id,
                            v_table_name,
                            v_node_type,
                            v_node_data,
                            v_fields_array,
                            v_table_grant_roles,
                            v_grant_array,
                            v_table_use_rls
                        )
                        RETURNING * INTO v_provision;

                        v_policy_idx := 0;
                    END IF;

                    v_table_id := v_provision.table_id;
                    v_node_idx := 1;

                    -- Remaining nodes (index 1+): augment existing table
                    WHILE v_node_idx < jsonb_array_length(v_table_entry->'nodes') LOOP
                        v_node_entry := v_table_entry->'nodes'->v_node_idx;

                        IF jsonb_typeof(v_node_entry) = 'string' THEN
                            v_node_type := v_node_entry #>> '{}';
                            v_node_data := '{}'::jsonb;
                        ELSE
                            v_node_type := v_node_entry->>'$type';
                            v_node_data := COALESCE(v_node_entry->'data', '{}'::jsonb);
                        END IF;

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, table_id,
                            node_type, node_data
                        ) VALUES (
                            v_blueprint.database_id,
                            v_table_id,
                            v_node_type,
                            v_node_data
                        );

                        v_node_idx := v_node_idx + 1;
                    END LOOP;

                ELSE
                    -- No nodes[] -- create table with fields only (no node_type)
                    INSERT INTO metaschema_modules_public.secure_table_provision (
                        database_id, schema_id, table_name,
                        fields,
                        grant_roles, grant_privileges, use_rls
                    ) VALUES (
                        v_blueprint.database_id,
                        schema_id,
                        v_table_name,
                        v_fields_array,
                        v_table_grant_roles,
                        v_grant_array,
                        v_table_use_rls
                    )
                    RETURNING * INTO v_provision;

                    v_table_id := v_provision.table_id;
                    v_policy_idx := 0;
                END IF;

                -- Store ref -> table_id mapping
                IF v_table_ref IS NOT NULL THEN
                    v_ref_map := v_ref_map || jsonb_build_object(v_table_ref, v_table_id);
                END IF;

                -- Remaining policies (index 1+): add to existing table
                IF v_table_entry ? 'policies' THEN
                    WHILE v_policy_idx < jsonb_array_length(v_table_entry->'policies') LOOP
                        v_policy_entry := v_table_entry->'policies'->v_policy_idx;
                        v_policy_type := v_policy_entry->>'$type';
                        v_policy_data := COALESCE(v_policy_entry->'data', '{}'::jsonb);

                        INSERT INTO metaschema_modules_public.secure_table_provision (
                            database_id, table_id,
                            grant_roles, grant_privileges,
                            policy_type, policy_privileges, policy_role,
                            policy_permissive, policy_name, policy_data
                        ) VALUES (
                            v_blueprint.database_id,
                            v_table_id,
                            v_table_grant_roles,
                            v_grant_array,
                            v_policy_type,
                            CASE WHEN v_policy_entry ? 'privileges'
                                THEN ARRAY(SELECT jsonb_array_elements_text(v_policy_entry->'privileges'))
                                ELSE NULL
                            END,
                            v_policy_entry->>'policy_role',
                            COALESCE((v_policy_entry->>'permissive')::boolean, true),
                            v_policy_entry->>'policy_name',
                            v_policy_data
                        );

                        v_policy_idx := v_policy_idx + 1;
                    END LOOP;
                END IF;
            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 2: Create relations
        -- For each relation in definition.relations:
        --   - $type specifies the relation type (e.g. "RelationBelongsTo")
        --   - Resolve source_ref and target_ref to table_ids via ref_map
        --   - Junction table config is top-level: node_type, policy_type, etc.
        --   - INSERT into relation_provision
        -- =====================================================================

        IF v_definition ? 'relations' AND jsonb_array_length(v_definition->'relations') > 0 THEN
            FOR v_relation_entry IN SELECT jsonb_array_elements(v_definition->'relations') LOOP

                -- $type is the relation type (e.g. "RelationBelongsTo")
                v_relation_type := v_relation_entry->>'$type';
                v_source_ref := v_relation_entry->>'source_ref';
                v_target_ref := v_relation_entry->>'target_ref';

                -- Resolve refs to table_ids
                v_source_table_id := (v_ref_map->>v_source_ref)::uuid;
                v_target_table_id := (v_ref_map->>v_target_ref)::uuid;

                IF v_source_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved source_ref "%" in relation', v_source_ref;
                END IF;

                IF v_target_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved target_ref "%" in relation', v_target_ref;
                END IF;

                v_field_name := v_relation_entry->>'field_name';
                v_delete_action := v_relation_entry->>'delete_action';
                v_is_required := COALESCE((v_relation_entry->>'is_required')::boolean, true);
                v_junction_table_name := v_relation_entry->>'junction_table_name';

                -- Junction table config (top-level fields, pass-through to relation_provision)
                v_rel_source_field_name := v_relation_entry->>'source_field_name';
                v_rel_target_field_name := v_relation_entry->>'target_field_name';
                v_rel_node_type := v_relation_entry->>'node_type';
                v_rel_node_data := COALESCE(v_relation_entry->'node_data', '{}'::jsonb);
                v_rel_policy_type := v_relation_entry->>'policy_type';
                v_rel_policy_data := COALESCE(v_relation_entry->'policy_data', '{}'::jsonb);
                v_rel_policy_permissive := (v_relation_entry->>'policy_permissive')::boolean;
                v_rel_grant_privileges := COALESCE(v_relation_entry->'grant_privileges', '[]'::jsonb);

                -- Resolve grant_roles from JSON array to text[]
                IF v_relation_entry ? 'grant_roles' THEN
                    v_rel_grant_roles := ARRAY(
                        SELECT jsonb_array_elements_text(v_relation_entry->'grant_roles')
                    );
                ELSE
                    v_rel_grant_roles := NULL;
                END IF;

                -- Convert relation grant_privileges from jsonb to jsonb[]
                v_rel_grant_array := '{}';
                IF jsonb_array_length(v_rel_grant_privileges) > 0 THEN
                    FOR v_grant_item IN SELECT jsonb_array_elements(v_rel_grant_privileges) LOOP
                        v_rel_grant_array := array_append(v_rel_grant_array, v_grant_item);
                    END LOOP;
                END IF;

                INSERT INTO metaschema_modules_public.relation_provision (
                    database_id,
                    relation_type,
                    source_table_id,
                    target_table_id,
                    field_name,
                    delete_action,
                    is_required,
                    junction_table_name,
                    source_field_name,
                    target_field_name,
                    node_type,
                    node_data,
                    grant_roles,
                    grant_privileges,
                    policy_type,
                    policy_permissive,
                    policy_data
                ) VALUES (
                    v_blueprint.database_id,
                    v_relation_type,
                    v_source_table_id,
                    v_target_table_id,
                    v_field_name,
                    v_delete_action,
                    v_is_required,
                    v_junction_table_name,
                    v_rel_source_field_name,
                    v_rel_target_field_name,
                    v_rel_node_type,
                    v_rel_node_data,
                    v_rel_grant_roles,
                    v_rel_grant_array,
                    v_rel_policy_type,
                    v_rel_policy_permissive,
                    v_rel_policy_data
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 3: Create indexes
        -- For each index in definition.indexes:
        --   - Resolve table_ref to table_id via ref_map
        --   - Resolve column name(s) to field_id(s) via metaschema_public.field
        --   - INSERT into metaschema_public.index
        -- Supports: BTREE, HNSW, GIN, GIST, BM25, and any other access_method
        -- =====================================================================

        IF v_definition ? 'indexes' AND jsonb_typeof(v_definition->'indexes') = 'array'
           AND jsonb_array_length(v_definition->'indexes') > 0 THEN
            FOR v_index_entry IN SELECT jsonb_array_elements(v_definition->'indexes') LOOP

                v_idx_table_ref := v_index_entry->>'table_ref';
                v_idx_table_id := (v_ref_map->>v_idx_table_ref)::uuid;

                IF v_idx_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved table_ref "%" in index definition', v_idx_table_ref;
                END IF;

                v_idx_access_method := UPPER(v_index_entry->>'access_method');
                v_idx_options := v_index_entry->'options';
                v_idx_is_unique := COALESCE((v_index_entry->>'is_unique')::boolean, false);

                -- Resolve op_classes from JSON array to text[]
                IF v_index_entry ? 'op_classes' AND jsonb_array_length(v_index_entry->'op_classes') > 0 THEN
                    v_idx_op_classes := ARRAY(
                        SELECT jsonb_array_elements_text(v_index_entry->'op_classes')
                    );
                ELSE
                    v_idx_op_classes := NULL;
                END IF;

                -- Support both single "column" and multi-column "columns" array
                IF v_index_entry ? 'columns' AND jsonb_typeof(v_index_entry->'columns') = 'array' THEN
                    -- Multi-column index: resolve each column name to field_id
                    v_idx_field_ids := '{}';
                    v_idx_col_idx := 0;
                    WHILE v_idx_col_idx < jsonb_array_length(v_index_entry->'columns') LOOP
                        v_idx_column_name := v_index_entry->'columns'->>v_idx_col_idx;

                        SELECT id INTO v_idx_field_id
                        FROM metaschema_public.field
                        WHERE table_id = v_idx_table_id AND name = v_idx_column_name;

                        IF v_idx_field_id IS NULL THEN
                            RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: field "%" not found on table ref "%" for index', v_idx_column_name, v_idx_table_ref;
                        END IF;

                        v_idx_field_ids := array_append(v_idx_field_ids, v_idx_field_id);
                        v_idx_col_idx := v_idx_col_idx + 1;
                    END LOOP;
                ELSE
                    -- Single column index
                    v_idx_column_name := v_index_entry->>'column';

                    SELECT id INTO v_idx_field_id
                    FROM metaschema_public.field
                    WHERE table_id = v_idx_table_id AND name = v_idx_column_name;

                    IF v_idx_field_id IS NULL THEN
                        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: field "%" not found on table ref "%" for index', v_idx_column_name, v_idx_table_ref;
                    END IF;

                    v_idx_field_ids := ARRAY[v_idx_field_id];
                END IF;

                -- Derive index name if not provided
                v_idx_name := v_index_entry->>'name';
                IF v_idx_name IS NULL OR v_idx_name = '' THEN
                    v_idx_name := v_idx_table_ref || '_' || v_idx_column_name || '_' || LOWER(v_idx_access_method) || '_idx';
                END IF;

                INSERT INTO metaschema_public.index (
                    database_id,
                    table_id,
                    name,
                    field_ids,
                    access_method,
                    op_classes,
                    options,
                    is_unique
                ) VALUES (
                    v_blueprint.database_id,
                    v_idx_table_id,
                    v_idx_name,
                    v_idx_field_ids,
                    v_idx_access_method,
                    v_idx_op_classes,
                    v_idx_options,
                    v_idx_is_unique
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- PHASE 4: Create full-text search configurations
        -- For each entry in definition.full_text_searches:
        --   - Resolve table_ref to table_id via ref_map
        --   - Resolve field (tsvector column) to field_id
        --   - Resolve sources[].field names to field_ids
        --   - INSERT into metaschema_public.full_text_search
        -- =====================================================================

        IF v_definition ? 'full_text_searches' AND jsonb_typeof(v_definition->'full_text_searches') = 'array'
           AND jsonb_array_length(v_definition->'full_text_searches') > 0 THEN
            FOR v_fts_entry IN SELECT jsonb_array_elements(v_definition->'full_text_searches') LOOP

                v_fts_table_ref := v_fts_entry->>'table_ref';
                v_fts_table_id := (v_ref_map->>v_fts_table_ref)::uuid;

                IF v_fts_table_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: unresolved table_ref "%" in full_text_search definition', v_fts_table_ref;
                END IF;

                -- Resolve the tsvector field
                SELECT id INTO v_fts_field_id
                FROM metaschema_public.field
                WHERE table_id = v_fts_table_id AND name = (v_fts_entry->>'field');

                IF v_fts_field_id IS NULL THEN
                    RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: tsvector field "%" not found on table ref "%"', v_fts_entry->>'field', v_fts_table_ref;
                END IF;

                -- Resolve each source field
                v_fts_source_field_ids := '{}';
                v_fts_weights := '{}';
                v_fts_langs := '{}';
                v_fts_source_idx := 0;

                WHILE v_fts_source_idx < jsonb_array_length(v_fts_entry->'sources') LOOP
                    v_fts_source := v_fts_entry->'sources'->v_fts_source_idx;

                    SELECT id INTO v_fts_source_field_id
                    FROM metaschema_public.field
                    WHERE table_id = v_fts_table_id AND name = (v_fts_source->>'field');

                    IF v_fts_source_field_id IS NULL THEN
                        RAISE EXCEPTION 'CONSTRUCT_BLUEPRINT: source field "%" not found on table ref "%" for full_text_search', v_fts_source->>'field', v_fts_table_ref;
                    END IF;

                    v_fts_source_field_ids := array_append(v_fts_source_field_ids, v_fts_source_field_id);
                    v_fts_weights := array_append(v_fts_weights, COALESCE(v_fts_source->>'weight', 'D'));
                    v_fts_langs := array_append(v_fts_langs, COALESCE(v_fts_source->>'lang', 'pg_catalog.simple'));

                    v_fts_source_idx := v_fts_source_idx + 1;
                END LOOP;

                INSERT INTO metaschema_public.full_text_search (
                    database_id,
                    table_id,
                    field_id,
                    field_ids,
                    weights,
                    langs
                ) VALUES (
                    v_blueprint.database_id,
                    v_fts_table_id,
                    v_fts_field_id,
                    v_fts_source_field_ids,
                    v_fts_weights,
                    v_fts_langs
                );

            END LOOP;
        END IF;

        -- =====================================================================
        -- SUCCESS: Update blueprint status
        -- =====================================================================

        UPDATE metaschema_modules_public.blueprint
        SET status = 'constructed',
            ref_map = v_ref_map,
            constructed_definition = v_definition,
            constructed_at = now(),
            error_details = NULL,
            updated_at = now()
        WHERE id = blueprint_id;

    EXCEPTION WHEN OTHERS THEN
        -- =====================================================================
        -- FAILURE: Record error and mark as failed.
        -- We do NOT re-raise here because the RAISE would propagate out of
        -- the function and abort the entire transaction, rolling back the
        -- status='failed' UPDATE. Instead we return NULL to signal failure.
        -- Callers should check for a NULL return and inspect status/error_details.
        -- =====================================================================

        UPDATE metaschema_modules_public.blueprint
        SET status = 'failed',
            error_details = SQLERRM,
            updated_at = now()
        WHERE id = blueprint_id;

        RETURN NULL;
    END;

    RETURN v_ref_map;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.construct_blueprint IS 'Executes a draft blueprint definition. Four phases: (1) create tables with nodes[], fields, and policies[], (2) create relations between tables, (3) create indexes on table fields (supports BTREE, HNSW, GIN, GIST, BM25, etc.), (4) create full-text search configurations with weighted multi-field TSVector support. nodes[] entries can be strings or {$type, data} objects. Relations use $type for relation_type with junction config as top-level fields (node_type, policy_type, grant_roles, grant_privileges, policy_data, policy_permissive, source_field_name, target_field_name, node_data). Indexes reference table_ref + column name(s) and are resolved to field_ids. Full-text searches reference table_ref + tsvector field + source fields with weights/langs. Builds a ref_map of local ref names to created table UUIDs. Updates blueprint status to constructed (or failed with error_details). Returns the ref_map.';

CREATE FUNCTION metaschema_modules_public.tg_validate_blueprint_definition() RETURNS trigger AS $EOFCODE$
DECLARE
    v_definition jsonb;
    v_table_entry jsonb;
    v_table_idx integer;
    v_node_entry jsonb;
    v_node_idx integer;
    v_policy_entry jsonb;
    v_policy_idx integer;
    v_relation_entry jsonb;
    v_relation_idx integer;
    v_table_ref text;
    v_index_entry jsonb;
    v_index_idx integer;
    v_fts_entry jsonb;
    v_fts_idx integer;
    v_source_entry jsonb;
    v_source_idx integer;
BEGIN
    v_definition := NEW.definition;

    -- definition must be an object
    IF jsonb_typeof(v_definition) != 'object' THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: definition must be a JSON object, got %', jsonb_typeof(v_definition);
    END IF;

    -- tables[] is required and must be an array
    IF NOT (v_definition ? 'tables') THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: definition must contain a "tables" array';
    END IF;

    IF jsonb_typeof(v_definition->'tables') != 'array' THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "tables" must be an array, got %', jsonb_typeof(v_definition->'tables');
    END IF;

    IF jsonb_array_length(v_definition->'tables') = 0 THEN
        RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "tables" array must not be empty';
    END IF;

    -- Validate each table entry
    v_table_idx := 0;
    FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP

        IF jsonb_typeof(v_table_entry) != 'object' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] must be an object', v_table_idx;
        END IF;

        v_table_ref := COALESCE(v_table_entry->>'ref', 'index ' || v_table_idx);

        -- Required keys
        IF NOT (v_table_entry ? 'ref') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] missing required key "ref"', v_table_idx;
        END IF;

        IF NOT (v_table_entry ? 'table_name') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) missing required key "table_name"', v_table_idx, v_table_ref;
        END IF;

        IF NOT (v_table_entry ? 'nodes') THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) missing required key "nodes"', v_table_idx, v_table_ref;
        END IF;

        IF jsonb_typeof(v_table_entry->'nodes') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "nodes" must be an array', v_table_idx, v_table_ref;
        END IF;

        IF jsonb_array_length(v_table_entry->'nodes') = 0 THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "nodes" array must not be empty', v_table_idx, v_table_ref;
        END IF;

        -- Validate each node entry
        v_node_idx := 0;
        WHILE v_node_idx < jsonb_array_length(v_table_entry->'nodes') LOOP
            v_node_entry := v_table_entry->'nodes'->v_node_idx;

            IF jsonb_typeof(v_node_entry) = 'string' THEN
                -- String shorthand: valid (e.g. "DataTimestamps")
                NULL;
            ELSIF jsonb_typeof(v_node_entry) = 'object' THEN
                -- Object form: must have $type
                IF NOT (v_node_entry ? '$type') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] object missing required key "$type"', v_table_idx, v_table_ref, v_node_idx;
                END IF;
                -- data key is optional, but if present must be an object
                IF v_node_entry ? 'data' AND jsonb_typeof(v_node_entry->'data') != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] "data" must be an object', v_table_idx, v_table_ref, v_node_idx;
                END IF;
            ELSE
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) nodes[%] must be a string or object, got %', v_table_idx, v_table_ref, v_node_idx, jsonb_typeof(v_node_entry);
            END IF;

            v_node_idx := v_node_idx + 1;
        END LOOP;

        -- Validate policies[] if present
        IF v_table_entry ? 'policies' THEN
            IF jsonb_typeof(v_table_entry->'policies') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "policies" must be an array', v_table_idx, v_table_ref;
            END IF;

            v_policy_idx := 0;
            WHILE v_policy_idx < jsonb_array_length(v_table_entry->'policies') LOOP
                v_policy_entry := v_table_entry->'policies'->v_policy_idx;

                IF jsonb_typeof(v_policy_entry) != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] must be an object', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                IF NOT (v_policy_entry ? '$type') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] missing required key "$type"', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                -- data key is optional, but if present must be an object
                IF v_policy_entry ? 'data' AND jsonb_typeof(v_policy_entry->'data') != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) policies[%] "data" must be an object', v_table_idx, v_table_ref, v_policy_idx;
                END IF;

                v_policy_idx := v_policy_idx + 1;
            END LOOP;
        END IF;

        -- Validate grants[] if present
        IF v_table_entry ? 'grants' THEN
            IF jsonb_typeof(v_table_entry->'grants') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: tables[%] (ref=%) "grants" must be an array', v_table_idx, v_table_ref;
            END IF;
        END IF;

        v_table_idx := v_table_idx + 1;
    END LOOP;

    -- Validate relations[] if present
    IF v_definition ? 'relations' THEN
        IF jsonb_typeof(v_definition->'relations') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "relations" must be an array, got %', jsonb_typeof(v_definition->'relations');
        END IF;

        v_relation_idx := 0;
        FOR v_relation_entry IN SELECT jsonb_array_elements(v_definition->'relations') LOOP

            IF jsonb_typeof(v_relation_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] must be an object', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? '$type') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "$type"', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? 'source_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "source_ref"', v_relation_idx;
            END IF;

            IF NOT (v_relation_entry ? 'target_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] missing required key "target_ref"', v_relation_idx;
            END IF;

            -- data key is optional, but if present must be an object
            IF v_relation_entry ? 'data' AND jsonb_typeof(v_relation_entry->'data') != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: relations[%] "data" must be an object', v_relation_idx;
            END IF;

            v_relation_idx := v_relation_idx + 1;
        END LOOP;
    END IF;

    -- Validate indexes[] if present
    IF v_definition ? 'indexes' THEN
        IF jsonb_typeof(v_definition->'indexes') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "indexes" must be an array, got %', jsonb_typeof(v_definition->'indexes');
        END IF;

        v_index_idx := 0;
        FOR v_index_entry IN SELECT jsonb_array_elements(v_definition->'indexes') LOOP

            IF jsonb_typeof(v_index_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] must be an object', v_index_idx;
            END IF;

            IF NOT (v_index_entry ? 'table_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "table_ref"', v_index_idx;
            END IF;

            -- Require either "column" (single) or "columns" (multi-column array)
            IF NOT (v_index_entry ? 'column') AND NOT (v_index_entry ? 'columns') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "column" (or "columns" for multi-column)', v_index_idx;
            END IF;

            -- If "columns" is present, it must be an array
            IF v_index_entry ? 'columns' AND jsonb_typeof(v_index_entry->'columns') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "columns" must be an array', v_index_idx;
            END IF;

            IF NOT (v_index_entry ? 'access_method') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] missing required key "access_method"', v_index_idx;
            END IF;

            -- options key is optional, but if present must be an object
            IF v_index_entry ? 'options' AND jsonb_typeof(v_index_entry->'options') != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "options" must be an object', v_index_idx;
            END IF;

            -- op_classes key is optional, but if present must be an array
            IF v_index_entry ? 'op_classes' AND jsonb_typeof(v_index_entry->'op_classes') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: indexes[%] "op_classes" must be an array', v_index_idx;
            END IF;

            v_index_idx := v_index_idx + 1;
        END LOOP;
    END IF;

    -- Validate full_text_searches[] if present
    IF v_definition ? 'full_text_searches' THEN
        IF jsonb_typeof(v_definition->'full_text_searches') != 'array' THEN
            RAISE EXCEPTION 'VALIDATE_BLUEPRINT: "full_text_searches" must be an array, got %', jsonb_typeof(v_definition->'full_text_searches');
        END IF;

        v_fts_idx := 0;
        FOR v_fts_entry IN SELECT jsonb_array_elements(v_definition->'full_text_searches') LOOP

            IF jsonb_typeof(v_fts_entry) != 'object' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] must be an object', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'table_ref') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "table_ref"', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'field') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "field"', v_fts_idx;
            END IF;

            IF NOT (v_fts_entry ? 'sources') THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] missing required key "sources"', v_fts_idx;
            END IF;

            IF jsonb_typeof(v_fts_entry->'sources') != 'array' THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] "sources" must be an array', v_fts_idx;
            END IF;

            IF jsonb_array_length(v_fts_entry->'sources') = 0 THEN
                RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] "sources" array must not be empty', v_fts_idx;
            END IF;

            -- Validate each source entry
            v_source_idx := 0;
            WHILE v_source_idx < jsonb_array_length(v_fts_entry->'sources') LOOP
                v_source_entry := v_fts_entry->'sources'->v_source_idx;

                IF jsonb_typeof(v_source_entry) != 'object' THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] must be an object', v_fts_idx, v_source_idx;
                END IF;

                IF NOT (v_source_entry ? 'field') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] missing required key "field"', v_fts_idx, v_source_idx;
                END IF;

                IF NOT (v_source_entry ? 'weight') THEN
                    RAISE EXCEPTION 'VALIDATE_BLUEPRINT: full_text_searches[%] sources[%] missing required key "weight"', v_fts_idx, v_source_idx;
                END IF;

                v_source_idx := v_source_idx + 1;
            END LOOP;

            v_fts_idx := v_fts_idx + 1;
        END LOOP;
    END IF;

    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.tg_validate_blueprint_definition IS 'Trigger function that validates the blueprint definition format on INSERT/UPDATE. Ensures structural correctness: tables[] with nodes[] (string shorthand or {$type, data} objects), policies[] with $type, relations[] with $type/source_ref/target_ref, indexes[] with table_ref/column/access_method, full_text_searches[] with table_ref/field/sources[]. Rejects malformed definitions before they reach construct_blueprint().';

CREATE TRIGGER _100_validate_blueprint_definition
  BEFORE INSERT OR UPDATE OF definition
  ON metaschema_modules_public.blueprint
  FOR EACH ROW
  EXECUTE PROCEDURE metaschema_modules_public.tg_validate_blueprint_definition();

CREATE TRIGGER _100_validate_blueprint_definition
  BEFORE INSERT OR UPDATE OF definition
  ON metaschema_modules_public.blueprint_template
  FOR EACH ROW
  EXECUTE PROCEDURE metaschema_modules_public.tg_validate_blueprint_definition();

CREATE FUNCTION metaschema_modules_public.tg_compute_blueprint_hash() RETURNS trigger AS $EOFCODE$
DECLARE
    v_definition jsonb;
    v_table_entry jsonb;
    v_table_ref text;
    v_table_hash uuid;
    v_table_hashes jsonb := '{}';
    v_hash_parts text := '';
    v_relations_hash uuid;
    v_indexes_hash uuid;
    v_fts_hash uuid;
BEGIN
    v_definition := NEW.definition;

    -- Skip if definition is NULL (shouldn't happen due to NOT NULL, but defensive)
    IF v_definition IS NULL THEN
        NEW.definition_hash := NULL;
        NEW.table_hashes := NULL;
        RETURN NEW;
    END IF;

    -- Compute individual table hashes
    IF v_definition ? 'tables' AND jsonb_typeof(v_definition->'tables') = 'array' THEN
        FOR v_table_entry IN SELECT jsonb_array_elements(v_definition->'tables') LOOP
            v_table_ref := v_table_entry->>'ref';

            -- Hash the entire table entry canonically
            v_table_hash := uuid_generate_v5(uuid_ns_url(), v_table_entry::text);

            -- Store in map (use ref as key, fall back to hash itself for unnamed tables)
            IF v_table_ref IS NOT NULL THEN
                v_table_hashes := v_table_hashes || jsonb_build_object(v_table_ref, v_table_hash);
            END IF;

            -- Accumulate ordered hash parts for Merkle root
            v_hash_parts := v_hash_parts || v_table_hash::text;
        END LOOP;
    END IF;

    -- Include relations in the Merkle root (if present)
    IF v_definition ? 'relations' AND jsonb_typeof(v_definition->'relations') = 'array'
       AND jsonb_array_length(v_definition->'relations') > 0 THEN
        v_relations_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'relations')::text);
        v_hash_parts := v_hash_parts || v_relations_hash::text;
    END IF;

    -- Include indexes in the Merkle root (if present)
    IF v_definition ? 'indexes' AND jsonb_typeof(v_definition->'indexes') = 'array'
       AND jsonb_array_length(v_definition->'indexes') > 0 THEN
        v_indexes_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'indexes')::text);
        v_hash_parts := v_hash_parts || v_indexes_hash::text;
    END IF;

    -- Include full_text_searches in the Merkle root (if present)
    IF v_definition ? 'full_text_searches' AND jsonb_typeof(v_definition->'full_text_searches') = 'array'
       AND jsonb_array_length(v_definition->'full_text_searches') > 0 THEN
        v_fts_hash := uuid_generate_v5(uuid_ns_url(), (v_definition->'full_text_searches')::text);
        v_hash_parts := v_hash_parts || v_fts_hash::text;
    END IF;

    -- Compute Merkle root from all hash parts
    IF v_hash_parts != '' THEN
        NEW.definition_hash := uuid_generate_v5(uuid_ns_url(), v_hash_parts);
    ELSE
        NEW.definition_hash := NULL;
    END IF;

    NEW.table_hashes := v_table_hashes;

    RETURN NEW;
END;
$EOFCODE$ LANGUAGE plpgsql VOLATILE;

COMMENT ON FUNCTION metaschema_modules_public.tg_compute_blueprint_hash IS 'Trigger function that computes Merkle-style content hashes for blueprint definitions. Produces table_hashes (per-table UUIDv5 hashes keyed by ref) and definition_hash (Merkle root over ordered table hashes + relations hash + indexes hash + full_text_searches hash). Uses uuid_generate_v5(uuid_ns_url(), jsonb::text) for deterministic content-addressable hashing, following the same pattern as object_store.object_hash_uuid(). Enables structural comparison, deduplication, and provenance tracking at both the table and blueprint level.';

CREATE TRIGGER _200_compute_blueprint_hash
  BEFORE INSERT OR UPDATE OF definition
  ON metaschema_modules_public.blueprint
  FOR EACH ROW
  EXECUTE PROCEDURE metaschema_modules_public.tg_compute_blueprint_hash();

CREATE TRIGGER _200_compute_blueprint_hash
  BEFORE INSERT OR UPDATE OF definition
  ON metaschema_modules_public.blueprint_template
  FOR EACH ROW
  EXECUTE PROCEDURE metaschema_modules_public.tg_compute_blueprint_hash();