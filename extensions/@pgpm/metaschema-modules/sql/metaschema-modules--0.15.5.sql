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
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE
);

CREATE INDEX encrypted_secrets_module_database_id_idx ON metaschema_modules_public.encrypted_secrets_module (database_id);

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
    REFERENCES metaschema_public."table" (id)
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
    REFERENCES metaschema_public."table" (id)
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
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT type_table_fkey
    FOREIGN KEY(type_table_id)
    REFERENCES metaschema_public."table" (id)
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
  grant_privileges jsonb[] NOT NULL DEFAULT ARRAY['["select","*"]'::jsonb, '["insert","*"]'::jsonb, '["update","*"]'::jsonb, '["delete","*"]'::jsonb],
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

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.node_data IS 'Configuration passed to the generator function for field creation (only used when node_type is set). Known keys include: field_name (text, default ''id'') for DataId, owner_field_name (text, default ''owner_id'') for DataDirectOwner/DataOwnershipInEntity, entity_field_name (text, default ''entity_id'') for DataEntityMembership/DataOwnershipInEntity, include_id (boolean, default true) for most node_types, include_user_fk (boolean, default true) to add FK to users table, create_index (boolean, default true) to create btree indexes on FK fields for join and cascade performance. Defaults to ''{}''.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.fields IS 'PostgreSQL array of jsonb field definition objects to create on the target table. Each object has keys: "name" (text, required), "type" (text, required), "default" (text, optional), "is_required" (boolean, optional, defaults to false), "min" (float, optional), "max" (float, optional), "regexp" (text, optional), "index" (boolean, optional, defaults to false — creates a btree index on the field). min/max generate CHECK constraints: for text/citext they constrain character_length, for integer/float types they constrain the value. regexp generates a CHECK (col ~ pattern) constraint for text/citext. Fields are created via metaschema.create_field() after any node_type generator runs, and their IDs are appended to out_fields. Example: ARRAY[''{"name":"username","type":"citext","max":256,"regexp":"^[a-z0-9_]+$"}''::jsonb, ''{"name":"score","type":"integer","min":0,"max":100}''::jsonb]. Defaults to ''{}'' (no additional fields).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_roles IS 'Database roles to grant privileges to. Supports multiple roles, e.g. ARRAY[''authenticated'', ''admin'']. Each role receives all privileges defined in grant_privileges. Defaults to ARRAY[''authenticated''].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grant_privileges IS 'PostgreSQL array of jsonb [privilege, columns] tuples defining table grants. Examples: ARRAY[''["select","*"]''::jsonb, ''["insert","*"]''::jsonb] for full access, or ARRAY[''["update",["name","bio"]]''::jsonb] for column-level grants. "*" means all columns; an array means column-level grant. Defaults to select/insert/update/delete for all columns (full CRUD). Type safety is enforced by PostgreSQL at INSERT time.';

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
    REFERENCES metaschema_public."table" (id)
    ON DELETE CASCADE,
  CONSTRAINT target_table_fkey
    FOREIGN KEY(target_table_id)
    REFERENCES metaschema_public."table" (id)
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
