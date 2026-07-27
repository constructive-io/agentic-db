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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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

CREATE TABLE metaschema_modules_public.config_secrets_user_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'user_secrets',
  api_name text DEFAULT 'config',
  private_api_name text DEFAULT NULL,
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

CREATE UNIQUE INDEX config_secrets_user_module_database_id_idx ON metaschema_modules_public.config_secrets_user_module (database_id);

CREATE TABLE metaschema_modules_public.invites_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  emails_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
  claimed_invites_table_id uuid NOT NULL DEFAULT uuid_nil(),
  invites_table_name text NOT NULL DEFAULT '',
  claimed_invites_table_name text NOT NULL DEFAULT '',
  submit_invite_code_function text NOT NULL DEFAULT '',
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  api_name text DEFAULT 'admin',
  private_api_name text DEFAULT NULL,
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

CREATE UNIQUE INDEX invites_module_unique_scope ON metaschema_modules_public.invites_module (database_id, scope, prefix);

CREATE TABLE metaschema_modules_public.events_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  events_table_name text NOT NULL DEFAULT '',
  event_aggregates_table_id uuid NOT NULL DEFAULT uuid_nil(),
  event_aggregates_table_name text NOT NULL DEFAULT '',
  event_types_table_id uuid NOT NULL DEFAULT uuid_nil(),
  event_types_table_name text NOT NULL DEFAULT '',
  levels_table_id uuid NOT NULL DEFAULT uuid_nil(),
  levels_table_name text NOT NULL DEFAULT '',
  level_requirements_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_requirements_table_name text NOT NULL DEFAULT '',
  level_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  level_grants_table_name text NOT NULL DEFAULT '',
  achievement_rewards_table_id uuid NOT NULL DEFAULT uuid_nil(),
  achievement_rewards_table_name text NOT NULL DEFAULT '',
  record_event text NOT NULL DEFAULT '',
  remove_event text NOT NULL DEFAULT '',
  tg_event text NOT NULL DEFAULT '',
  tg_event_toggle text NOT NULL DEFAULT '',
  tg_event_toggle_bool text NOT NULL DEFAULT '',
  tg_event_bool text NOT NULL DEFAULT '',
  upsert_aggregate text NOT NULL DEFAULT '',
  tg_update_aggregates text NOT NULL DEFAULT '',
  steps_required text NOT NULL DEFAULT '',
  level_achieved text NOT NULL DEFAULT '',
  tg_check_achievements text NOT NULL DEFAULT '',
  grant_achievement text NOT NULL DEFAULT '',
  tg_achievement_reward text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT events_table_fkey
    FOREIGN KEY(events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT event_aggregates_table_fkey
    FOREIGN KEY(event_aggregates_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT event_types_table_fkey
    FOREIGN KEY(event_types_table_id)
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
  CONSTRAINT level_grants_table_fkey
    FOREIGN KEY(level_grants_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT achievement_rewards_table_fkey
    FOREIGN KEY(achievement_rewards_table_id)
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

CREATE INDEX events_module_database_id_idx ON metaschema_modules_public.events_module (database_id);

CREATE TABLE metaschema_modules_public.limits_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
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
  limit_credits_table_id uuid NULL,
  events_table_id uuid NULL,
  credit_codes_table_id uuid NULL,
  credit_code_items_table_id uuid NULL,
  credit_redemptions_table_id uuid NULL,
  aggregate_table_id uuid NULL,
  limit_caps_table_id uuid NULL,
  limit_caps_defaults_table_id uuid NULL,
  cap_check_trigger text NOT NULL DEFAULT '',
  resolve_cap_function text NOT NULL DEFAULT '',
  limit_warnings_table_id uuid NULL,
  limit_warning_state_table_id uuid NULL,
  limit_check_soft_function text NOT NULL DEFAULT '',
  limit_aggregate_check_soft_function text NOT NULL DEFAULT '',
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
    ON DELETE CASCADE,
  CONSTRAINT aggregate_table_fkey
    FOREIGN KEY(aggregate_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limit_credits_table_fkey
    FOREIGN KEY(limit_credits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT events_table_fkey
    FOREIGN KEY(events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT credit_codes_table_fkey
    FOREIGN KEY(credit_codes_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT credit_code_items_table_fkey
    FOREIGN KEY(credit_code_items_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT credit_redemptions_table_fkey
    FOREIGN KEY(credit_redemptions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limit_caps_table_fkey
    FOREIGN KEY(limit_caps_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limit_caps_defaults_table_fkey
    FOREIGN KEY(limit_caps_defaults_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limit_warnings_table_fkey
    FOREIGN KEY(limit_warnings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT limit_warning_state_table_fkey
    FOREIGN KEY(limit_warning_state_table_id)
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
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
  memberships_table_name text NOT NULL DEFAULT '',
  members_table_id uuid NOT NULL DEFAULT uuid_nil(),
  members_table_name text NOT NULL DEFAULT '',
  membership_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
  membership_defaults_table_name text NOT NULL DEFAULT '',
  membership_settings_table_id uuid NULL,
  membership_settings_table_name text NOT NULL DEFAULT '',
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
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  entity_table_owner_id uuid NULL,
  get_org_fn text NULL,
  actor_mask_check text NOT NULL DEFAULT '',
  actor_perm_check text NOT NULL DEFAULT '',
  entity_ids_by_mask text NULL,
  entity_ids_by_perm text NULL,
  entity_ids_function text NULL,
  member_profiles_table_id uuid NULL,
  permission_default_permissions_table_id uuid NULL,
  permission_default_grants_table_id uuid NULL,
  api_name text DEFAULT 'admin',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT membership_settings_table_fkey
    FOREIGN KEY(membership_settings_table_id)
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
    ON DELETE CASCADE,
  CONSTRAINT memberships_module_unique 
    UNIQUE (database_id, scope, prefix)
);

CREATE INDEX memberships_module_database_id_idx ON metaschema_modules_public.memberships_module (database_id);

CREATE TABLE metaschema_modules_public.permissions_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT '',
  default_table_id uuid NOT NULL DEFAULT uuid_nil(),
  default_table_name text NOT NULL DEFAULT '',
  bitlen int NOT NULL DEFAULT 64,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  get_padded_mask text NOT NULL DEFAULT '',
  get_mask text NOT NULL DEFAULT '',
  get_by_mask text NOT NULL DEFAULT '',
  get_mask_by_name text NOT NULL DEFAULT '',
  api_name text DEFAULT 'admin',
  private_api_name text DEFAULT NULL,
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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT '',
  profile_permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_permissions_table_name text NOT NULL DEFAULT '',
  profile_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_grants_table_name text NOT NULL DEFAULT '',
  profile_definition_grants_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_definition_grants_table_name text NOT NULL DEFAULT '',
  profile_templates_table_id uuid NOT NULL DEFAULT uuid_nil(),
  profile_templates_table_name text NOT NULL DEFAULT '',
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  actor_table_id uuid NOT NULL DEFAULT uuid_nil(),
  permissions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  memberships_table_id uuid NOT NULL DEFAULT uuid_nil(),
  api_name text DEFAULT 'admin',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT profile_templates_table_fkey
    FOREIGN KEY(profile_templates_table_id)
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
    UNIQUE (database_id, scope, prefix)
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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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

CREATE TABLE metaschema_modules_public.user_state_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'user_state',
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

CREATE INDEX user_state_module_database_id_idx ON metaschema_modules_public.user_state_module (database_id);

CREATE TABLE metaschema_modules_public.sessions_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  auth_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_default_expiration interval NOT NULL DEFAULT '30 days'::interval,
  sessions_table_name text NOT NULL DEFAULT 'sessions',
  session_credentials_table_name text NOT NULL DEFAULT 'session_credentials',
  auth_settings_table_name text NOT NULL DEFAULT 'app_settings_auth',
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
  audits_table_name text NOT NULL DEFAULT 'audit_log_auth',
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
  sign_in_cross_origin_function text NOT NULL DEFAULT 'sign_in_cross_origin',
  request_cross_origin_token_function text NOT NULL DEFAULT 'request_cross_origin_token',
  extend_token_expires text NOT NULL DEFAULT 'extend_token_expires',
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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
  entity_field text,
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
  scope text NOT NULL DEFAULT 'org',
  prefix text NOT NULL DEFAULT '',
  private_schema_name text NOT NULL DEFAULT '',
  sprt_table_name text NOT NULL DEFAULT '',
  rebuild_hierarchy_function text NOT NULL DEFAULT '',
  get_subordinates_function text NOT NULL DEFAULT '',
  get_managers_function text NOT NULL DEFAULT '',
  is_manager_of_function text NOT NULL DEFAULT '',
  default_permissions text[] DEFAULT NULL,
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

CREATE TABLE metaschema_modules_public.secure_table_provision (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text DEFAULT NULL,
  nodes jsonb NOT NULL DEFAULT '[]',
  use_rls boolean NOT NULL DEFAULT true,
  fields jsonb[] NOT NULL DEFAULT '{}',
  grants jsonb NOT NULL DEFAULT '[]',
  policies jsonb NOT NULL DEFAULT '[]',
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

COMMENT ON TABLE metaschema_modules_public.secure_table_provision IS 'Provisions security, fields, grants, and policies onto a table. Each row can independently: (1) create fields via nodes[] array (supporting multiple Data* modules per row), (2) grant privileges via grants[] array (supporting per-role privilege targeting), (3) create RLS policies via policies[] array (supporting multiple Authz* policies per row). Multiple rows can target the same table to compose different concerns. All three concerns are optional and independent.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.id IS 'Unique identifier for this provision row.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.database_id IS 'The database this provision belongs to. Required.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.schema_id IS 'Target schema for the table. Defaults to uuid_nil(); the trigger resolves this to the app_public schema if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_id IS 'Target table to provision. Defaults to uuid_nil(); the trigger creates or resolves the table via table_name if not explicitly provided.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.table_name IS 'Name of the target table. Used to create or look up the table when table_id is not provided. If omitted, it is backfilled from the resolved table.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.nodes IS 'Array of node objects to apply to the table. Each element is a jsonb object with a required "$type" key (one of: DataId, DataDirectOwner, DataEntityMembership, DataOwnershipInEntity, DataTimestamps, DataPeoplestamps, DataPublishable, DataSoftDelete, DataEmbedding, DataFullTextSearch, DataSlug, etc.) and an optional "data" key containing generator-specific configuration. Supports multiple nodes per row, matching the blueprint definition format. Example: [{"$type": "DataId"}, {"$type": "DataTimestamps"}, {"$type": "DataDirectOwner", "data": {"owner_field_name": "author_id"}}]. Defaults to ''[]'' (no node processing).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.use_rls IS 'If true and Row Level Security is not yet enabled on the target table, enable it. Automatically set to true by the trigger when policies[] is non-empty. Defaults to true.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.fields IS 'PostgreSQL array of jsonb field definition objects to create on the target table. Each object has keys: "name" (text, required), "type" (text, required), "default" (text, optional), "is_required" (boolean, optional, defaults to false), "min" (float, optional), "max" (float, optional), "regexp" (text, optional), "index" (boolean, optional, defaults to false — creates a btree index on the field). min/max generate CHECK constraints: for text/citext they constrain character_length, for integer/float types they constrain the value. regexp generates a CHECK (col ~ pattern) constraint for text/citext. Fields are created via metaschema.create_field() after any node_type generator runs, and their IDs are appended to out_fields. Example: ARRAY[''{"name":"username","type":"citext","max":256,"regexp":"^[a-z0-9_]+$"}''::jsonb, ''{"name":"score","type":"integer","min":0,"max":100}''::jsonb]. Defaults to ''{}'' (no additional fields).';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.grants IS 'Array of grant objects defining table privileges. Each element is a jsonb object with keys: "roles" (text[], required — database roles to grant to, e.g. ["authenticated","admin"]), "privileges" (jsonb[], required — array of [privilege, columns] tuples, e.g. [["select","*"],["insert","*"]]). "*" means all columns; an array means column-level grant. Supports per-role privilege targeting: different grant entries can target different roles with different privileges. Example: [{"roles":["authenticated"],"privileges":[["select","*"]]},{"roles":["admin"],"privileges":[["insert","*"],["update","*"],["delete","*"]]}]. Defaults to ''[]'' (no grants). When policies[] omit explicit privileges/policy_role, they fall back to the verbs and first role from grants[].';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.policies IS 'Array of policy objects to create on the target table. Each element is a jsonb object with keys: "$type" (text, required — the Authz* policy generator type, e.g. AuthzEntityMembership, AuthzMembership, AuthzDirectOwner, AuthzPublishable, AuthzAllowAll), "data" (jsonb, optional — opaque configuration passed to metaschema.create_policy(), structure varies by type), "privileges" (text[], optional — privileges the policy applies to, e.g. ["select","insert"]; if omitted, derived from grants[] privilege verbs), "policy_role" (text, optional — role the policy targets; if omitted, falls back to first role in first grants[] entry, or ''authenticated'' if no grants), "permissive" (boolean, optional — PERMISSIVE or RESTRICTIVE; defaults to true), "policy_name" (text, optional — custom suffix for the generated policy name; if omitted, auto-derived from $type by stripping Authz prefix). Supports multiple policies per row. Example: [{"$type": "AuthzEntityMembership", "data": {"entity_field": "owner_id", "membership_type": 3}, "privileges": ["select", "insert"]}, {"$type": "AuthzDirectOwner", "data": {"entity_field": "actor_id"}, "privileges": ["update", "delete"]}]. Defaults to ''[]'' (no policies created). When non-empty, the trigger automatically enables RLS.';

COMMENT ON COLUMN metaschema_modules_public.secure_table_provision.out_fields IS 'Output column populated by the trigger after field creation. Contains the UUIDs of the metaschema fields created on the target table by this provision row''s nodes. NULL when nodes is empty or before the trigger runs. Callers should not set this directly.';

CREATE INDEX secure_table_provision_database_id_idx ON metaschema_modules_public.secure_table_provision (database_id);

CREATE INDEX secure_table_provision_table_id_idx ON metaschema_modules_public.secure_table_provision (table_id);

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
  nodes jsonb NOT NULL DEFAULT '[]',
  grants jsonb NOT NULL DEFAULT '[]',
  policies jsonb NOT NULL DEFAULT '[]',
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

COMMENT ON COLUMN metaschema_modules_public.relation_provision.relation_type IS 'The type of relation to create. Uses SuperCase naming:
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

COMMENT ON COLUMN metaschema_modules_public.relation_provision.nodes IS 'For RelationManyToMany: array of node objects to apply to the junction table. Each element is a jsonb object with a required "$type" key and an optional "data" key. Forwarded to provision_table as-is. The trigger does not interpret or validate this value.
     Examples: [{"$type": "DataId"}, {"$type": "DataTimestamps"}, {"$type": "DataDirectOwner", "data": {"owner_field_name": "author_id"}}].
     Defaults to ''[]'' (no node processing beyond the FK fields and composite key if use_composite_key is true).
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.grants IS 'For RelationManyToMany: array of grant objects for the junction table. Forwarded to provision_table as-is. Each element is a jsonb object with keys: "roles" (text[], required), "privileges" (jsonb[], required — array of [privilege, columns] tuples). Example: [{"roles":["authenticated"],"privileges":[["select","*"],["insert","*"],["delete","*"]]}]. Defaults to ''[]'' (no grants). Ignored for RelationBelongsTo/RelationHasOne.';

COMMENT ON COLUMN metaschema_modules_public.relation_provision.policies IS 'For RelationManyToMany: array of policy objects for the junction table. Forwarded to provision_table as-is. Each element is a jsonb object with keys: "$type" (text, required — the Authz* policy generator type), "data" (jsonb, optional — opaque config), "privileges" (text[], optional — e.g. ["select","insert"]; if omitted, derived from grants[] privilege verbs), "policy_role" (text, optional — falls back to first role in first grants[] entry, or ''authenticated''), "permissive" (boolean, optional, defaults to true), "policy_name" (text, optional). Supports multiple policies per row.
     Example: [{"$type": "AuthzEntityMembership", "data": {"entity_field": "entity_id", "membership_type": 2}, "privileges": ["select", "insert", "delete"]}].
     Defaults to ''[]'' (no policies — the junction table will have RLS enabled but no policies unless added separately).
     Ignored for RelationBelongsTo/RelationHasOne/RelationHasMany.';

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

COMMENT ON TABLE metaschema_modules_public.blueprint IS 'An owned, editable blueprint scoped to a specific database. Created by copying from a blueprint_template via copy_template_to_blueprint() or built from scratch. The owner can customize the definition at any time. Execute it with construct_blueprint() which creates a separate blueprint_construction record to track the build.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.id IS 'Unique identifier for this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.owner_id IS 'The user who owns this blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.database_id IS 'The database this blueprint is scoped to. Tables created by construct_blueprint() are provisioned in this database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.name IS 'Machine-readable name for the blueprint. Must be unique per database.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.display_name IS 'Human-readable display name for the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.description IS 'Optional description of the blueprint.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition IS 'The blueprint definition as a JSONB document. Contains tables[] (each with table_name, optional schema_name, nodes[] for data behaviors, fields[], grants[], and policies[] using $type), relations[] (using $type with source_table/target_table and optional source_schema/target_schema), indexes[] (using table_name + column), and full_text_searches[] (using table_name + field + sources[]). Everything is name-based — no UUIDs in the definition.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.template_id IS 'If this blueprint was created by copying a template, the ID of the source template. NULL if built from scratch.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.created_at IS 'Timestamp when this blueprint was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.definition_hash IS 'UUIDv5 Merkle root hash of the definition. Computed automatically via trigger from the ordered table_hashes. Used for content-addressable deduplication and provenance tracking. Backend-computed — clients should never set this directly.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.table_hashes IS 'JSONB map of table names to their individual UUIDv5 content hashes. Each table hash is computed from the canonical jsonb::text of the table entry. Enables structural comparison at the table level across blueprints and templates. Backend-computed via trigger.';

COMMENT ON COLUMN metaschema_modules_public.blueprint.updated_at IS 'Timestamp when this blueprint was last modified.';

CREATE INDEX blueprint_owner_id_idx ON metaschema_modules_public.blueprint (owner_id);

CREATE INDEX blueprint_database_id_idx ON metaschema_modules_public.blueprint (database_id);

CREATE INDEX blueprint_template_id_idx ON metaschema_modules_public.blueprint (template_id);

CREATE INDEX blueprint_definition_hash_idx ON metaschema_modules_public.blueprint (definition_hash);

CREATE TABLE metaschema_modules_public.blueprint_construction (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  blueprint_id uuid NOT NULL,
  database_id uuid NOT NULL,
  schema_id uuid,
  status text NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'constructing', 'constructed', 'failed')),
  error_details text,
  table_map jsonb NOT NULL DEFAULT '{}',
  constructed_definition jsonb,
  constructed_at timestamptz,
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT blueprint_construction_blueprint_fkey
    FOREIGN KEY(blueprint_id)
    REFERENCES metaschema_modules_public.blueprint (id)
    ON DELETE CASCADE,
  CONSTRAINT blueprint_construction_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.blueprint_construction IS 'Tracks individual construction attempts of a blueprint. Each time construct_blueprint() is called, a new record is created here. This separates the editable blueprint definition from its build history, allowing blueprints to be re-executed, constructed into multiple databases, and maintain an audit trail of all construction attempts.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.id IS 'Unique identifier for this construction attempt.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.blueprint_id IS 'The blueprint that was constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.database_id IS 'The database the blueprint was constructed into.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.schema_id IS 'The default schema used for tables that did not specify an explicit schema_name. NULL if not yet resolved.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.status IS 'Execution state of this construction attempt. pending: created but not yet started. constructing: currently executing. constructed: successfully completed. failed: execution failed (see error_details).';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.error_details IS 'Error message from a failed construction attempt. NULL unless status is failed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.table_map IS 'Mapping of table names to created table UUIDs, populated after successful construction. Format: {"products": "uuid", "categories": "uuid", ...}. Defaults to empty object.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.constructed_definition IS 'Immutable snapshot of the definition at construct-time. Preserved so the exact definition that was executed is recorded even if the user later modifies the blueprint definition.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.constructed_at IS 'Timestamp when construction successfully completed. NULL until constructed.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.created_at IS 'Timestamp when this construction attempt was created.';

COMMENT ON COLUMN metaschema_modules_public.blueprint_construction.updated_at IS 'Timestamp when this construction attempt was last modified.';

CREATE INDEX blueprint_construction_blueprint_id_idx ON metaschema_modules_public.blueprint_construction (blueprint_id);

CREATE INDEX blueprint_construction_database_id_idx ON metaschema_modules_public.blueprint_construction (database_id);

CREATE INDEX blueprint_construction_status_idx ON metaschema_modules_public.blueprint_construction (status);

CREATE TABLE metaschema_modules_public.storage_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  buckets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  files_table_id uuid NOT NULL DEFAULT uuid_nil(),
  buckets_table_name text NOT NULL DEFAULT 'buckets',
  files_table_name text NOT NULL DEFAULT 'files',
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  policies jsonb NULL,
  provisions jsonb NULL,
  entity_table_id uuid NULL,
  entity_field text,
  endpoint text NULL,
  public_url_prefix text NULL,
  provider text NULL,
  allowed_origins text[] NULL,
  restrict_reads boolean NOT NULL DEFAULT false,
  has_path_shares boolean NOT NULL DEFAULT false,
  path_shares_table_id uuid NULL DEFAULT NULL,
  upload_url_expiry_seconds int NULL,
  download_url_expiry_seconds int NULL,
  default_max_file_size bigint NULL,
  max_filename_length int NULL,
  cache_ttl_seconds int NULL,
  max_bulk_files int NULL,
  max_bulk_total_size bigint NULL,
  has_versioning boolean NOT NULL DEFAULT false,
  has_content_hash boolean NOT NULL DEFAULT false,
  has_custom_keys boolean NOT NULL DEFAULT false,
  has_audit_log boolean NOT NULL DEFAULT false,
  has_confirm_upload boolean NOT NULL DEFAULT false,
  confirm_upload_delay interval NOT NULL DEFAULT '30 seconds',
  file_events_table_id uuid NULL DEFAULT NULL,
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT NULL,
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT buckets_table_fkey
    FOREIGN KEY(buckets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT files_table_fkey
    FOREIGN KEY(files_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT path_shares_table_fkey
    FOREIGN KEY(path_shares_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT file_events_table_fkey
    FOREIGN KEY(file_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX storage_module_database_id_idx ON metaschema_modules_public.storage_module (database_id);

CREATE UNIQUE INDEX storage_module_unique_scope ON metaschema_modules_public.storage_module (database_id, scope, prefix);

CREATE TABLE metaschema_modules_public.entity_type_provision (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  name text NOT NULL,
  prefix text NOT NULL,
  description text NOT NULL DEFAULT '',
  parent_entity text NOT NULL DEFAULT 'org',
  table_name text DEFAULT NULL,
  is_visible boolean NOT NULL DEFAULT true,
  has_limits boolean NOT NULL DEFAULT false,
  has_profiles boolean NOT NULL DEFAULT false,
  has_levels boolean NOT NULL DEFAULT false,
  has_invites boolean NOT NULL DEFAULT false,
  has_invite_achievements boolean NOT NULL DEFAULT false,
  storage jsonb DEFAULT NULL,
  namespaces jsonb DEFAULT NULL,
  functions jsonb DEFAULT NULL,
  graphs jsonb DEFAULT NULL,
  agents jsonb DEFAULT NULL,
  skip_entity_policies boolean NOT NULL DEFAULT false,
  table_provision jsonb DEFAULT NULL,
  out_membership_type int DEFAULT NULL,
  out_entity_table_id uuid DEFAULT NULL,
  out_entity_table_name text DEFAULT NULL,
  out_installed_modules text[] DEFAULT NULL,
  out_storage_module_id uuid DEFAULT NULL,
  out_buckets_table_id uuid DEFAULT NULL,
  out_files_table_id uuid DEFAULT NULL,
  out_path_shares_table_id uuid DEFAULT NULL,
  out_invites_module_id uuid DEFAULT NULL,
  out_namespace_module_id uuid DEFAULT NULL,
  out_namespaces_table_id uuid DEFAULT NULL,
  out_namespace_events_table_id uuid DEFAULT NULL,
  out_function_module_id uuid DEFAULT NULL,
  out_definitions_table_id uuid DEFAULT NULL,
  out_invocations_table_id uuid DEFAULT NULL,
  out_execution_logs_table_id uuid DEFAULT NULL,
  out_graph_module_id uuid DEFAULT NULL,
  out_graphs_table_id uuid DEFAULT NULL,
  out_agent_module_id uuid DEFAULT NULL,
  CONSTRAINT entity_type_provision_unique_prefix 
    UNIQUE (database_id, prefix),
  CONSTRAINT entity_type_provision_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE
);

COMMENT ON TABLE metaschema_modules_public.entity_type_provision IS 'Provisions a new membership entity type. Each INSERT creates an entity table, registers a membership type,
     and installs the required modules (permissions, memberships, limits) plus optional modules (profiles, levels, invites).
     Uses provision_membership_table() internally. Graceful: duplicate (database_id, prefix) pairs are silently skipped
     via the unique constraint (use INSERT ... ON CONFLICT DO NOTHING).
     Policy behavior: by default the five entity-table RLS policies are applied (gated by is_visible).
     Set table_provision to a single jsonb object (using the same shape as provision_table() /
     blueprint tables[] entries) to replace the defaults with your own; set skip_entity_policies=true
     as an escape hatch to apply zero policies.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.id IS 'Unique identifier for this provision row.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.database_id IS 'The database to provision this entity type in. Required.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.name IS 'Human-readable name for this entity type, e.g. ''Data Room'', ''Team Channel''. Required.
     Stored in the entity_types registry table.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.prefix IS 'SQL prefix used for table and module naming, e.g. ''data_room'', ''team_channel''. Required.
     Drives entity table name (prefix || ''s'' by default), module labels (permissions_module:prefix),
     and membership table names (prefix_memberships, prefix_members, etc.).
     Must be unique per database — the (database_id, prefix) constraint ensures graceful ON CONFLICT DO NOTHING.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.description IS 'Description of this entity type. Stored in the entity_types registry table. Defaults to empty string.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.parent_entity IS 'Prefix of the parent entity type. The trigger resolves this to a membership_type integer
     by looking up memberships_module WHERE prefix = parent_entity.
     Defaults to ''org'' (the organization-level type). For nested types, set to the parent''s prefix
     (e.g. ''data_room'' for a team_channel nested under data_room).
     The parent type must already be provisioned before this INSERT.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.table_name IS 'Override the entity table name. When NULL (default), the table name is derived as prefix || ''s''
     (e.g. prefix ''data_room'' produces table ''data_rooms'').
     Set this when the pluralization rule doesn''t apply (e.g. prefix ''staff'' should produce ''staff'' not ''staffs'').';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.is_visible IS 'Whether members of the parent entity can see child entities. Defaults to true.
     When true: a SELECT policy allows parent members to list child entities (e.g. org members can see all data rooms).
     When false: only direct members of the entity itself can see it (private entity mode).
     Controls whether the parent_member SELECT policy is created on the entity table.
     Only meaningful on the defaults path — ignored (no-op) when table_provision is non-NULL or
     skip_entity_policies=true, since no default policies are being applied in those cases.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.has_limits IS 'Whether to apply limits_module security for this type. Defaults to false.
     The limits_module table structure is always created (memberships_module requires it),
     but when false, no RLS policies are applied to the limits tables.
     Set to true if this entity type needs configurable resource limits per membership.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.has_profiles IS 'Whether to provision profiles_module for this type. Defaults to false.
     Profiles provide named permission roles (e.g. ''Editor'', ''Viewer'') with pre-configured permission bitmasks.
     When true, creates profile tables and applies profiles security.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.has_levels IS 'Whether to provision events_module for this type. Defaults to false.
     Levels provide gamification/achievement tracking for members.
     When true, creates level steps, achievements, and level tables with security.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.has_invites IS 'Whether to provision invites_module for this type. Defaults to false.
     When true, the trigger inserts a row into invites_module which in turn
     (via insert_invites_module BEFORE INSERT) creates {prefix}_invites and
     {prefix}_claimed_invites tables plus the submit_{prefix}_invite_code() function.
     Re-provisioning is idempotent: the UNIQUE (database_id, membership_type) constraint
     on invites_module combined with ON CONFLICT DO NOTHING in the fan-out makes
     repeated INSERTs safe.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.has_invite_achievements IS 'Whether to auto-attach an EventTracker to the claimed_invites table for invite-based
     achievements. Defaults to false. Requires has_invites=true AND has_levels=true.
     When true, the trigger calls event_tracker() on the claimed_invites table with
     event_name=''invite_claimed'', actor_field=''sender_id'', events=[''INSERT''],
     crediting the SENDER (inviter) when someone claims their invite code.
     Developers can then define achievements in the blueprint achievements[] section
     that reference the ''invite_claimed'' event (e.g., "Invite 5 friends" = count: 5).';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.skip_entity_policies IS 'Escape hatch: when true, apply zero RLS policies to the entity table. Defaults to false.
     Use this only when you want the entity table provisioned with zero policies (e.g. because you
     plan to insert secure_table_provision rows yourself later). In most cases, prefer leaving this
     false and either accepting the five defaults (table_provision=NULL) or overriding them via
     table_provision.
     Defaults (applied when table_provision IS NULL and skip_entity_policies=false):
       - SELECT (parent_member): parent entity members can see child entities (only when is_visible=true)
       - SELECT (self_member):   direct members of the entity can see it
       - INSERT:                 create_entity permission on the parent entity
       - UPDATE:                 admin_entity permission on the entity itself
       - DELETE:                 owner of the entity can delete it';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.table_provision IS 'Single jsonb object describing the full security setup to apply to the entity table.
     Uses the same vocabulary as metaschema_modules_public.provision_table() and blueprint tables[]
     entries, so an entity table is configured the same way an ordinary blueprint table is.
     Defaults to NULL; when non-NULL, the five default policies are implicitly replaced by
     table_provision.policies[] (is_visible becomes a no-op on this path).
     Recognized keys (all optional):
       - use_rls          (boolean, default true)
       - nodes            (jsonb array of {"$type","data"} Data* module entries)
       - fields           (jsonb array of field objects: name,type,is_required,default,min,max,regexp,index)
       - grants           (jsonb array of grant objects; each with roles[] and privileges[])
       - policies         (jsonb array of policy objects; each with $type, privileges, data, name, role, permissive)
     The trigger forwards all setup (nodes/fields/grants/policies) as a single secure_table_provision row
     against the newly created entity table.
     Example — override with two SELECT policies:
       table_provision := jsonb_build_object(
         ''policies'', jsonb_build_array(
           jsonb_build_object(
             ''$type'', ''AuthzEntityMembership'',
             ''privileges'', jsonb_build_array(''select''),
             ''data'', jsonb_build_object(''entity_field'', ''id'', ''membership_type'', 3),
             ''name'', ''self_member''
           ),
           jsonb_build_object(
             ''$type'', ''AuthzDirectOwner'',
             ''privileges'', jsonb_build_array(''select'', ''update''),
             ''data'', jsonb_build_object(''owner_field'', ''owner_id'')
           )
         )
       )';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_membership_type IS 'Output: the auto-assigned integer membership type ID. Populated by the trigger after successful provisioning.
     This is the ID used in entity_types, memberships_module, and all module tables.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_entity_table_id IS 'Output: the UUID of the created entity table. Populated by the trigger.
     Use this to reference the entity table in subsequent relation_provision or secure_table_provision rows.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_entity_table_name IS 'Output: the name of the created entity table (e.g. ''data_rooms''). Populated by the trigger.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_installed_modules IS 'Output: array of installed module labels (e.g. ARRAY[''permissions_module:data_room'', ''memberships_module:data_room'', ''invites_module:data_room'']).
     Populated by the trigger. Useful for verifying which modules were provisioned.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.storage IS 'Optional JSON array of storage module definitions. Presence triggers provisioning
     (same inference model as namespaces, functions, agents).
     Each element provisions a separate storage module with its own tables
     ({prefix}_{key}_buckets/files), RLS policies, and feature flags.
     NULL = do not provision storage. ''[{}]'' = provision one default storage module.
     Each array element recognizes (all optional):
       - key                           (text) module discriminator, max 16 chars, lowercase snake_case.
                                              Defaults to ''default'' (omitted from table names).
                                              Non-default keys become infixes: {prefix}_{key}_buckets.
                                              (storage_key accepted for backward compat)
       - upload_url_expiry_seconds     (integer) presigned PUT URL expiry override
       - download_url_expiry_seconds   (integer) presigned GET URL expiry override
       - default_max_file_size         (bigint)  global max file size in bytes for this module
       - allowed_origins               (text[])  default CORS origins for all buckets in this module
       - restrict_reads                (boolean) require read_files permission for SELECT on files
       - has_path_shares               (boolean) enable virtual filesystem + path share policies
       - has_versioning                (boolean) enable file version chains
       - has_content_hash              (boolean) enable content hash for dedup
       - has_custom_keys               (boolean) allow client-provided S3 keys
       - has_audit_log                 (boolean) enable file events audit table
       - has_confirm_upload            (boolean) enable HeadObject confirmation flow
       - confirm_upload_delay          (interval) delay before first confirmation attempt
       - buckets                       (jsonb[]) array of initial bucket definitions to seed.
         Each bucket: { name (required), description, is_public, allowed_mime_types, max_file_size, allowed_origins }
       - provisions                    (jsonb object) per-table customization keyed by "files" or "buckets".
                                              Each value: { nodes, fields, grants, use_rls, policies }.
     Example (single module, backward compat):
       storage := ''[{"buckets": [{"name": "documents"}]}]''::jsonb
     Example (multi-module):
       storage := ''[{"has_path_shares": true, "buckets": [{"name": "documents"}]}, {"key": "fn", "has_custom_keys": true, "buckets": [{"name": "functions"}]}]''::jsonb';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_storage_module_id IS 'Output: the UUID of the storage_module row created for this entity type. Populated by the trigger when storage is non-NULL and non-empty.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_buckets_table_id IS 'Output: the UUID of the generated buckets table (e.g. data_room_buckets). Populated by the trigger when storage is non-NULL and non-empty.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_files_table_id IS 'Output: the UUID of the generated files table (e.g. data_room_files). Populated by the trigger when storage is non-NULL and non-empty.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_invites_module_id IS 'Output: the UUID of the invites_module row created for this entity type. Populated by the trigger when has_invites=true.
     NULL when has_invites=false, or when re-provisioning hits ON CONFLICT DO NOTHING
     (i.e. the invites_module row was created in a previous run).';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.namespaces IS 'Optional JSON array of namespace module definitions. Presence triggers provisioning.
     NULL = do not provision namespaces. ''[{}]'' = provision one default namespace module.
     Each element recognizes (all optional):
       - key       (text) module discriminator. Defaults to ''default''.
       - policies  (jsonb array) RLS policy overrides. NULL = apply defaults from apply_namespace_security().
     Creates {prefix}_namespaces (or {prefix}_{key}_namespaces for non-default keys)
     with entity-scoped RLS (AuthzEntityMembership) and a rename proxy trigger.
     Registers manage_namespaces permission bit on first provision.
     Example: namespaces := ''[{}]''::jsonb';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.functions IS 'Optional JSON array of function module definitions. Presence triggers provisioning.
     NULL = do not provision functions. ''[{}]'' = provision one default function module.
     Each element recognizes (all optional):
       - key       (text) module discriminator. Defaults to ''default''.
       - policies  (jsonb array) RLS policy overrides. NULL = apply defaults from apply_function_security().
     Creates {prefix}_function_definitions (or {prefix}_{key}_function_definitions for non-default keys)
     with entity-scoped RLS and a job trigger dispatching function:provision tasks.
     Registers manage_functions + invoke_functions permission bits on first provision.
     Example: functions := ''[{}]''::jsonb';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.graphs IS 'Optional JSON array of graph module definitions. Presence triggers provisioning.
     NULL = do not provision graphs. ''[{}]'' = provision one default graph module.
     Each element recognizes (all optional):
       - key       (text) module discriminator. Defaults to ''default''.
       - policies  (jsonb array) RLS policy overrides. NULL = apply defaults from apply_graph_security().
     Registers manage_graphs + execute_graphs permission bits on first provision.
     Graph module requires a merkle_store_module_id dependency, so entity_type_provision
     only registers permissions here. The graph module itself must be provisioned
     separately with the merkle store dependency resolved.
     Example: graphs := ''[{}]''::jsonb';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_namespace_module_id IS 'Output: the UUID of the namespace_module row created (or found) for this entity type.
     Populated by the trigger when namespaces is non-NULL. NULL otherwise.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_namespaces_table_id IS 'Output: the UUID of the generated namespaces table (e.g. data_room_namespaces).
     Populated by the trigger when namespaces is non-NULL. NULL otherwise.';

COMMENT ON COLUMN metaschema_modules_public.entity_type_provision.out_namespace_events_table_id IS 'Output: the UUID of the generated namespace_events partitioned table (e.g. data_room_namespace_events).
     Monthly partitioned, 12-month retention. Populated by the trigger when namespaces is non-NULL. NULL otherwise.';

CREATE TABLE metaschema_modules_public.rate_limits_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  rate_limit_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  ip_rate_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  rate_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  rate_limit_settings_table_name text NOT NULL DEFAULT 'app_settings_rate_limit',
  ip_rate_limits_table_name text NOT NULL DEFAULT 'auth_ip_rate_limits',
  rate_limits_table_name text NOT NULL DEFAULT 'auth_rate_limits',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_limit_settings_table_fkey
    FOREIGN KEY(rate_limit_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT ip_rate_limits_table_fkey
    FOREIGN KEY(ip_rate_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_limits_table_fkey
    FOREIGN KEY(rate_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_limits_module_database_id_uniq 
    UNIQUE (database_id)
);

CREATE INDEX rate_limits_module_database_id_idx ON metaschema_modules_public.rate_limits_module (database_id);

COMMENT ON CONSTRAINT rate_limit_settings_table_fkey ON metaschema_modules_public.rate_limits_module IS '@fieldName rateLimitSettingsTableByRateLimitSettingsTableId';

COMMENT ON CONSTRAINT ip_rate_limits_table_fkey ON metaschema_modules_public.rate_limits_module IS '@fieldName ipRateLimitsTableByIpRateLimitsTableId';

COMMENT ON CONSTRAINT rate_limits_table_fkey ON metaschema_modules_public.rate_limits_module IS '@fieldName rateLimitsTableByRateLimitsTableId';

CREATE TABLE metaschema_modules_public.devices_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  user_devices_table_id uuid NOT NULL DEFAULT uuid_nil(),
  device_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  user_devices_table_name text NOT NULL DEFAULT 'auth_user_devices',
  device_settings_table_name text NOT NULL DEFAULT 'app_settings_device',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT user_devices_table_fkey
    FOREIGN KEY(user_devices_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT device_settings_table_fkey
    FOREIGN KEY(device_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT devices_module_database_id_uniq 
    UNIQUE (database_id)
);

CREATE INDEX devices_module_database_id_idx ON metaschema_modules_public.devices_module (database_id);

COMMENT ON CONSTRAINT user_devices_table_fkey ON metaschema_modules_public.devices_module IS '@fieldName userDevicesTableByUserDevicesTableId';

COMMENT ON CONSTRAINT device_settings_table_fkey ON metaschema_modules_public.devices_module IS '@fieldName deviceSettingsTableByDeviceSettingsTableId';

CREATE TABLE metaschema_modules_public.session_secrets_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'session_secrets',
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
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
  CONSTRAINT sessions_table_fkey
    FOREIGN KEY(sessions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE UNIQUE INDEX session_secrets_module_database_id_idx ON metaschema_modules_public.session_secrets_module (database_id);

CREATE INDEX session_secrets_module_schema_id_idx ON metaschema_modules_public.session_secrets_module (schema_id);

CREATE INDEX session_secrets_module_table_id_idx ON metaschema_modules_public.session_secrets_module (table_id);

CREATE INDEX session_secrets_module_sessions_table_id_idx ON metaschema_modules_public.session_secrets_module (sessions_table_id);

COMMENT ON TABLE metaschema_modules_public.session_secrets_module IS 'Config row for the session_secrets_module, which provisions a DB-private, session-scoped ephemeral key-value store for challenges, nonces, and one-time tokens that must never be readable by end users.';

COMMENT ON COLUMN metaschema_modules_public.session_secrets_module.sessions_table_id IS 'Resolved reference to sessions_module.sessions_table_name, used to FK session_secrets.session_id with ON DELETE CASCADE.';

CREATE TABLE metaschema_modules_public.webauthn_credentials_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'webauthn_credentials',
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
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

CREATE INDEX webauthn_credentials_module_database_id_idx ON metaschema_modules_public.webauthn_credentials_module (database_id);

COMMENT ON TABLE metaschema_modules_public.webauthn_credentials_module IS 'Config row for the webauthn_credentials_module, which provisions the per-user WebAuthn/passkey credentials table (public key, counter, transports, device type, backup state) mirroring crypto_addresses_module. The sibling webauthn_auth_module holds RP config and the registration/sign-in challenge state.';

COMMENT ON COLUMN metaschema_modules_public.webauthn_credentials_module.private_schema_id IS 'Private schema that hosts SECURITY DEFINER helpers which write to webauthn_credentials (registration / counter-bump / delete).';

CREATE TABLE metaschema_modules_public.webauthn_auth_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  auth_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  rp_id text NOT NULL DEFAULT '',
  rp_name text NOT NULL DEFAULT '',
  origin_allowlist text[] NOT NULL DEFAULT '{}',
  attestation_type text NOT NULL DEFAULT 'none' CHECK (attestation_type IN ('none', 'indirect', 'direct', 'enterprise')),
  require_user_verification boolean NOT NULL DEFAULT false,
  resident_key text NOT NULL DEFAULT 'required' CHECK (resident_key IN ('discouraged', 'preferred', 'required')),
  challenge_expiry interval NOT NULL DEFAULT '5 minutes',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT users_table_fkey
    FOREIGN KEY(users_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT credentials_table_fkey
    FOREIGN KEY(credentials_table_id)
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
  CONSTRAINT session_secrets_table_fkey
    FOREIGN KEY(session_secrets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT auth_settings_table_fkey
    FOREIGN KEY(auth_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX webauthn_auth_module_database_id_idx ON metaschema_modules_public.webauthn_auth_module (database_id);

CREATE TABLE metaschema_modules_public.identity_providers_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'identity_providers',
  api_name text DEFAULT 'auth',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
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
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX identity_providers_module_database_id_idx ON metaschema_modules_public.identity_providers_module (database_id);

CREATE INDEX identity_providers_module_schema_id_idx ON metaschema_modules_public.identity_providers_module (schema_id);

CREATE INDEX identity_providers_module_private_schema_id_idx ON metaschema_modules_public.identity_providers_module (private_schema_id);

CREATE INDEX identity_providers_module_table_id_idx ON metaschema_modules_public.identity_providers_module (table_id);

CREATE UNIQUE INDEX identity_providers_module_unique_scope ON metaschema_modules_public.identity_providers_module (database_id, scope);

COMMENT ON TABLE metaschema_modules_public.identity_providers_module IS 'Entity-aware config row for the identity_providers_module, which provisions a per-database
     identity_providers table holding OAuth2 / OIDC (and future SAML) provider definitions.
     The scope column determines which internal_secrets_module table the rotate proc targets
     (app_secrets for app scope, platform_secrets for platform scope). When scope = database,
     the secrets table gets a database_id column.
     Scoping matrix:
       scope=app       → per-database flat, in-app admin manages
       scope=platform  → platform-wide, platform admin manages (generate:constructive)
       scope=database  → per-database infra, carries database_id';

COMMENT ON COLUMN metaschema_modules_public.identity_providers_module.private_schema_id IS 'Private schema that hosts SECURITY DEFINER admin helpers which write to identity_providers (create / update / enable / disable / rotate-secret / delete) and the per-app quota check.';

CREATE TABLE metaschema_modules_public.notifications_module (
  id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  notifications_table_id uuid NOT NULL DEFAULT uuid_nil(),
  read_state_table_id uuid NOT NULL DEFAULT uuid_nil(),
  preferences_table_id uuid,
  channels_table_id uuid,
  delivery_log_table_id uuid,
  suppressions_table_id uuid,
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  user_settings_table_id uuid,
  organization_settings_table_id uuid,
  has_channels boolean NOT NULL DEFAULT true,
  has_preferences boolean NOT NULL DEFAULT true,
  has_settings_extension boolean NOT NULL DEFAULT false,
  has_digest_metadata boolean NOT NULL DEFAULT false,
  has_subscriptions boolean NOT NULL DEFAULT false,
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT 'notifications',
  private_api_name text DEFAULT NULL,
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT notifications_table_fkey
    FOREIGN KEY(notifications_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT read_state_table_fkey
    FOREIGN KEY(read_state_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT preferences_table_fkey
    FOREIGN KEY(preferences_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT channels_table_fkey
    FOREIGN KEY(channels_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT delivery_log_table_fkey
    FOREIGN KEY(delivery_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT suppressions_table_fkey
    FOREIGN KEY(suppressions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT user_settings_table_fkey
    FOREIGN KEY(user_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT organization_settings_table_fkey
    FOREIGN KEY(organization_settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.notifications_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.notifications_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT notifications_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName notificationsTableByNotificationsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT read_state_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName readStateTableByReadStateTableId
@omit manyToMany';

COMMENT ON CONSTRAINT preferences_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName preferencesTableByPreferencesTableId
@omit manyToMany';

COMMENT ON CONSTRAINT channels_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName channelsTableByChannelsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT delivery_log_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName deliveryLogTableByDeliveryLogTableId
@omit manyToMany';

COMMENT ON CONSTRAINT suppressions_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName suppressionsTableBySuppressionsTableId';

COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.notifications_module IS '@omit manyToMany';

COMMENT ON CONSTRAINT user_settings_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName userSettingsTableByUserSettingsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT organization_settings_table_fkey ON metaschema_modules_public.notifications_module IS '@fieldName organizationSettingsTableByOrganizationSettingsTableId
@omit manyToMany';

COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.notifications_module IS '@omit manyToMany';

CREATE INDEX notifications_module_database_id_idx ON metaschema_modules_public.notifications_module (database_id);

CREATE TABLE metaschema_modules_public.plans_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  plans_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plans_table_name text NOT NULL DEFAULT '',
  plan_limits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plan_limits_table_name text NOT NULL DEFAULT '',
  plan_pricing_table_id uuid NULL,
  plan_overrides_table_id uuid NULL,
  plan_meter_limits_table_id uuid NULL,
  plan_caps_table_id uuid NULL,
  apply_plan_function text NOT NULL DEFAULT '',
  apply_plan_aggregate_function text NOT NULL DEFAULT '',
  apply_billing_plan_function text NULL,
  apply_plan_caps_function text NULL,
  prefix text NULL,
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT plans_table_fkey
    FOREIGN KEY(plans_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_limits_table_fkey
    FOREIGN KEY(plan_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_pricing_table_fkey
    FOREIGN KEY(plan_pricing_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_overrides_table_fkey
    FOREIGN KEY(plan_overrides_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_meter_limits_table_fkey
    FOREIGN KEY(plan_meter_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_caps_table_fkey
    FOREIGN KEY(plan_caps_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plans_module_database_id_unique 
    UNIQUE (database_id)
);

CREATE INDEX plans_module_database_id_idx ON metaschema_modules_public.plans_module (database_id);

CREATE TABLE metaschema_modules_public.billing_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  meters_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meters_table_name text NOT NULL DEFAULT '',
  plan_subscriptions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plan_subscriptions_table_name text NOT NULL DEFAULT '',
  ledger_table_id uuid NOT NULL DEFAULT uuid_nil(),
  ledger_table_name text NOT NULL DEFAULT '',
  balances_table_id uuid NOT NULL DEFAULT uuid_nil(),
  balances_table_name text NOT NULL DEFAULT '',
  meter_credits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_credits_table_name text NOT NULL DEFAULT '',
  meter_sources_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_sources_table_name text NOT NULL DEFAULT '',
  meter_defaults_table_id uuid NOT NULL DEFAULT uuid_nil(),
  meter_defaults_table_name text NOT NULL DEFAULT '',
  record_usage_function text NOT NULL DEFAULT '',
  sweep_expired_subscriptions_function text NOT NULL DEFAULT '',
  rollup_usage_summary_function text NOT NULL DEFAULT '',
  prefix text NULL,
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT meters_table_fkey
    FOREIGN KEY(meters_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT plan_subscriptions_table_fkey
    FOREIGN KEY(plan_subscriptions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT ledger_table_fkey
    FOREIGN KEY(ledger_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT balances_table_fkey
    FOREIGN KEY(balances_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT meter_credits_table_fkey
    FOREIGN KEY(meter_credits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT meter_sources_table_fkey
    FOREIGN KEY(meter_sources_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT meter_defaults_table_fkey
    FOREIGN KEY(meter_defaults_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT billing_module_database_id_unique 
    UNIQUE (database_id)
);

CREATE INDEX billing_module_database_id_idx ON metaschema_modules_public.billing_module (database_id);

CREATE TABLE metaschema_modules_public.billing_provider_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  provider text NOT NULL DEFAULT 'stripe',
  products_table_id uuid NULL,
  prices_table_id uuid NULL,
  subscriptions_table_id uuid NULL,
  billing_customers_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_customers_table_name text NOT NULL DEFAULT '',
  billing_products_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_products_table_name text NOT NULL DEFAULT '',
  billing_prices_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_prices_table_name text NOT NULL DEFAULT '',
  billing_subscriptions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_subscriptions_table_name text NOT NULL DEFAULT '',
  billing_webhook_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  billing_webhook_events_table_name text NOT NULL DEFAULT '',
  process_billing_event_function text NOT NULL DEFAULT '',
  prefix text NULL,
  api_name text DEFAULT NULL,
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT billing_customers_table_fkey
    FOREIGN KEY(billing_customers_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT billing_products_table_fkey
    FOREIGN KEY(billing_products_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT billing_prices_table_fkey
    FOREIGN KEY(billing_prices_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT billing_subscriptions_table_fkey
    FOREIGN KEY(billing_subscriptions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT billing_webhook_events_table_fkey
    FOREIGN KEY(billing_webhook_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT products_table_fkey
    FOREIGN KEY(products_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT prices_table_fkey
    FOREIGN KEY(prices_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT subscriptions_table_fkey
    FOREIGN KEY(subscriptions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE SET NULL,
  CONSTRAINT billing_provider_module_database_id_unique 
    UNIQUE (database_id)
);

CREATE INDEX billing_provider_module_database_id_idx ON metaschema_modules_public.billing_provider_module (database_id);

CREATE TABLE metaschema_modules_public.realtime_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  subscriptions_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  change_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  listener_node_table_id uuid NOT NULL DEFAULT uuid_nil(),
  source_registry_table_id uuid NOT NULL DEFAULT uuid_nil(),
  retention_hours int NOT NULL DEFAULT 168,
  premake int NOT NULL DEFAULT 7,
  "interval" text NOT NULL DEFAULT '1 day',
  notify_channel text NULL,
  api_name text DEFAULT 'realtime',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT subscriptions_schema_fkey
    FOREIGN KEY(subscriptions_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT change_log_table_fkey
    FOREIGN KEY(change_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT listener_node_table_fkey
    FOREIGN KEY(listener_node_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT source_registry_table_fkey
    FOREIGN KEY(source_registry_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX realtime_module_database_id_idx ON metaschema_modules_public.realtime_module (database_id);

CREATE UNIQUE INDEX realtime_module_unique_per_db ON metaschema_modules_public.realtime_module (database_id);

CREATE INDEX realtime_module_schema_id_idx ON metaschema_modules_public.realtime_module (schema_id);

CREATE INDEX realtime_module_private_schema_id_idx ON metaschema_modules_public.realtime_module (private_schema_id);

CREATE INDEX realtime_module_subscriptions_schema_id_idx ON metaschema_modules_public.realtime_module (subscriptions_schema_id);

CREATE INDEX realtime_module_change_log_table_id_idx ON metaschema_modules_public.realtime_module (change_log_table_id);

CREATE INDEX realtime_module_listener_node_table_id_idx ON metaschema_modules_public.realtime_module (listener_node_table_id);

CREATE INDEX realtime_module_source_registry_table_id_idx ON metaschema_modules_public.realtime_module (source_registry_table_id);

CREATE TABLE metaschema_modules_public.rate_limit_meters_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  rate_limit_state_table_id uuid NOT NULL DEFAULT uuid_nil(),
  rate_limit_state_table_name text NOT NULL DEFAULT '',
  rate_limit_overrides_table_id uuid NULL,
  rate_limit_overrides_table_name text NOT NULL DEFAULT '',
  rate_window_limits_table_id uuid NULL,
  rate_window_limits_table_name text NOT NULL DEFAULT '',
  check_rate_limit_function text NOT NULL DEFAULT '',
  prefix text NULL,
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT rate_limit_state_table_fkey
    FOREIGN KEY(rate_limit_state_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_limit_overrides_table_fkey
    FOREIGN KEY(rate_limit_overrides_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_window_limits_table_fkey
    FOREIGN KEY(rate_window_limits_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT rate_limit_meters_module_database_id_unique 
    UNIQUE (database_id)
);

CREATE INDEX rate_limit_meters_module_database_id_idx ON metaschema_modules_public.rate_limit_meters_module (database_id);

COMMENT ON CONSTRAINT rate_limit_state_table_fkey ON metaschema_modules_public.rate_limit_meters_module IS '@fieldName rateLimitStateTableByRateLimitStateTableId';

COMMENT ON CONSTRAINT rate_limit_overrides_table_fkey ON metaschema_modules_public.rate_limit_meters_module IS '@fieldName rateLimitOverridesTableByRateLimitOverridesTableId';

COMMENT ON CONSTRAINT rate_window_limits_table_fkey ON metaschema_modules_public.rate_limit_meters_module IS '@fieldName rateWindowLimitsTableByRateWindowLimitsTableId';

CREATE TABLE metaschema_modules_public.inference_log_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  inference_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  inference_log_table_name text NOT NULL DEFAULT '',
  usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  usage_summary_table_name text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  actor_fk_table_id uuid NULL,
  entity_fk_table_id uuid NULL,
  prefix text NOT NULL DEFAULT '',
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT inference_log_table_fkey
    FOREIGN KEY(inference_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT usage_summary_table_fkey
    FOREIGN KEY(usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT inference_log_module_database_id_prefix_unique 
    UNIQUE NULLS NOT DISTINCT (database_id, prefix)
);

CREATE INDEX inference_log_module_database_id_idx ON metaschema_modules_public.inference_log_module (database_id);

CREATE TABLE metaschema_modules_public.compute_log_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  compute_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  compute_log_table_name text NOT NULL DEFAULT '',
  usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  usage_summary_table_name text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  actor_fk_table_id uuid NULL,
  entity_fk_table_id uuid NULL,
  prefix text NOT NULL DEFAULT '',
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT compute_log_table_fkey
    FOREIGN KEY(compute_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT usage_summary_table_fkey
    FOREIGN KEY(usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT compute_log_module_database_id_scope_unique 
    UNIQUE (database_id, scope)
);

CREATE INDEX compute_log_module_database_id_idx ON metaschema_modules_public.compute_log_module (database_id);

CREATE TABLE metaschema_modules_public.transfer_log_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  transfer_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  transfer_log_table_name text NOT NULL DEFAULT '',
  usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  usage_summary_table_name text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  actor_fk_table_id uuid NULL,
  entity_fk_table_id uuid NULL,
  prefix text NOT NULL DEFAULT '',
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT transfer_log_table_fkey
    FOREIGN KEY(transfer_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT usage_summary_table_fkey
    FOREIGN KEY(usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT transfer_log_module_database_id_prefix_unique 
    UNIQUE NULLS NOT DISTINCT (database_id, prefix)
);

CREATE INDEX transfer_log_module_database_id_idx ON metaschema_modules_public.transfer_log_module (database_id);

CREATE TABLE metaschema_modules_public.storage_log_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  storage_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  storage_log_table_name text NOT NULL DEFAULT '',
  usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  usage_summary_table_name text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  actor_fk_table_id uuid NULL,
  entity_fk_table_id uuid NULL,
  prefix text NOT NULL DEFAULT '',
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT storage_log_table_fkey
    FOREIGN KEY(storage_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT usage_summary_table_fkey
    FOREIGN KEY(usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT storage_log_module_database_id_scope_unique 
    UNIQUE (database_id, scope)
);

CREATE INDEX storage_log_module_database_id_idx ON metaschema_modules_public.storage_log_module (database_id);

CREATE TABLE metaschema_modules_public.db_usage_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  table_stats_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_stats_log_table_name text NOT NULL DEFAULT '',
  table_stats_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_stats_summary_table_name text NOT NULL DEFAULT '',
  query_stats_log_table_id uuid NOT NULL DEFAULT uuid_nil(),
  query_stats_log_table_name text NOT NULL DEFAULT '',
  query_stats_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  query_stats_summary_table_name text NOT NULL DEFAULT '',
  collect_db_table_stats_function text NOT NULL DEFAULT '',
  collect_db_query_stats_function text NOT NULL DEFAULT '',
  rollup_db_table_stats_usage_summary_function text NOT NULL DEFAULT '',
  rollup_db_query_stats_usage_summary_function text NOT NULL DEFAULT '',
  "interval" text NOT NULL DEFAULT '1 month',
  retention text NOT NULL DEFAULT '12 months',
  premake int NOT NULL DEFAULT 2,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  default_permissions text[] DEFAULT NULL,
  api_name text DEFAULT 'usage',
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT table_stats_log_table_fkey
    FOREIGN KEY(table_stats_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT table_stats_summary_table_fkey
    FOREIGN KEY(table_stats_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT query_stats_log_table_fkey
    FOREIGN KEY(query_stats_log_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT query_stats_summary_table_fkey
    FOREIGN KEY(query_stats_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT db_usage_module_database_id_scope_unique 
    UNIQUE (database_id, scope)
);

CREATE INDEX db_usage_module_database_id_idx ON metaschema_modules_public.db_usage_module (database_id);

CREATE TABLE metaschema_modules_public.agent_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  thread_table_id uuid NOT NULL DEFAULT uuid_nil(),
  message_table_id uuid NOT NULL DEFAULT uuid_nil(),
  task_table_id uuid NOT NULL DEFAULT uuid_nil(),
  prompts_table_id uuid NOT NULL DEFAULT uuid_nil(),
  plan_table_id uuid DEFAULT NULL,
  agent_table_id uuid DEFAULT NULL,
  persona_table_id uuid DEFAULT NULL,
  resource_table_id uuid DEFAULT NULL,
  thread_table_name text NOT NULL DEFAULT 'agent_thread',
  message_table_name text NOT NULL DEFAULT 'agent_message',
  task_table_name text NOT NULL DEFAULT 'agent_task',
  prompts_table_name text NOT NULL DEFAULT 'agent_prompt',
  plan_table_name text NOT NULL DEFAULT 'agent_plan',
  agent_table_name text NOT NULL DEFAULT 'agent',
  persona_table_name text NOT NULL DEFAULT 'agent_persona',
  resource_table_name text NOT NULL DEFAULT 'agent_resource',
  has_plans boolean NOT NULL DEFAULT false,
  has_resources boolean NOT NULL DEFAULT false,
  has_agents boolean NOT NULL DEFAULT false,
  shared boolean NOT NULL DEFAULT false,
  api_name text DEFAULT 'agent',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  resources jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT agent_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_thread_table_fkey
    FOREIGN KEY(thread_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_message_table_fkey
    FOREIGN KEY(message_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_task_table_fkey
    FOREIGN KEY(task_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_prompts_table_fkey
    FOREIGN KEY(prompts_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_plan_table_fkey
    FOREIGN KEY(plan_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_agent_table_fkey
    FOREIGN KEY(agent_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_persona_table_fkey
    FOREIGN KEY(persona_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_resource_table_fkey
    FOREIGN KEY(resource_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT agent_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX agent_module_database_id_idx ON metaschema_modules_public.agent_module (database_id);

CREATE UNIQUE INDEX agent_module_unique_scope ON metaschema_modules_public.agent_module (database_id, scope, prefix);

CREATE TABLE metaschema_modules_public.merkle_store_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  object_table_id uuid NOT NULL DEFAULT uuid_nil(),
  store_table_id uuid NOT NULL DEFAULT uuid_nil(),
  commit_table_id uuid NOT NULL DEFAULT uuid_nil(),
  ref_table_id uuid NOT NULL DEFAULT uuid_nil(),
  prefix text NOT NULL DEFAULT '',
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  function_prefix text DEFAULT NULL,
  permission_key text DEFAULT NULL,
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
  CONSTRAINT object_table_fkey
    FOREIGN KEY(object_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT store_table_fkey
    FOREIGN KEY(store_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT commit_table_fkey
    FOREIGN KEY(commit_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT ref_table_fkey
    FOREIGN KEY(ref_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT merkle_store_module_database_prefix_unique 
    UNIQUE (database_id, prefix)
);

CREATE INDEX merkle_store_module_database_id_idx ON metaschema_modules_public.merkle_store_module (database_id);

CREATE INDEX merkle_store_module_private_schema_id_idx ON metaschema_modules_public.merkle_store_module (private_schema_id);

CREATE TABLE metaschema_modules_public.graph_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  public_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  merkle_store_module_id uuid NOT NULL,
  graphs_table_id uuid NOT NULL DEFAULT uuid_nil(),
  api_name text,
  private_api_name text,
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT public_schema_fkey
    FOREIGN KEY(public_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT merkle_store_fkey
    FOREIGN KEY(merkle_store_module_id)
    REFERENCES metaschema_modules_public.merkle_store_module (id)
    ON DELETE CASCADE,
  CONSTRAINT graphs_table_fkey
    FOREIGN KEY(graphs_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_module_database_merkle_unique 
    UNIQUE (database_id, merkle_store_module_id)
);

CREATE INDEX graph_module_database_id_idx ON metaschema_modules_public.graph_module (database_id);

CREATE TABLE metaschema_modules_public.graph_execution_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  graph_module_id uuid NOT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  executions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  outputs_table_id uuid NOT NULL DEFAULT uuid_nil(),
  node_states_table_id uuid NOT NULL DEFAULT uuid_nil(),
  executions_table_name text NOT NULL DEFAULT 'function_graph_executions',
  outputs_table_name text NOT NULL DEFAULT 'function_graph_execution_outputs',
  node_states_table_name text NOT NULL DEFAULT 'function_graph_execution_node_states',
  api_name text,
  private_api_name text,
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT graph_execution_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_graph_module_fkey
    FOREIGN KEY(graph_module_id)
    REFERENCES metaschema_modules_public.graph_module (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_executions_table_fkey
    FOREIGN KEY(executions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_outputs_table_fkey
    FOREIGN KEY(outputs_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_node_states_table_fkey
    FOREIGN KEY(node_states_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT graph_execution_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX graph_execution_module_database_id_idx ON metaschema_modules_public.graph_execution_module (database_id);

CREATE UNIQUE INDEX graph_execution_module_unique_scope ON metaschema_modules_public.graph_execution_module (database_id, scope);

CREATE TABLE metaschema_modules_public.db_preset_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  public_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  scope text NOT NULL,
  prefix text NOT NULL,
  merkle_store_module_id uuid NOT NULL,
  db_presets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  store_name text NOT NULL,
  api_name text,
  private_api_name text,
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT public_schema_fkey
    FOREIGN KEY(public_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT merkle_store_fkey
    FOREIGN KEY(merkle_store_module_id)
    REFERENCES metaschema_modules_public.merkle_store_module (id)
    ON DELETE CASCADE,
  CONSTRAINT db_presets_table_fkey
    FOREIGN KEY(db_presets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT db_preset_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT db_preset_module_database_merkle_unique 
    UNIQUE (database_id, merkle_store_module_id)
);

CREATE INDEX db_preset_module_database_id_idx ON metaschema_modules_public.db_preset_module (database_id);

CREATE TABLE metaschema_modules_public.namespace_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  namespaces_table_id uuid NOT NULL DEFAULT uuid_nil(),
  namespace_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  namespaces_table_name text NOT NULL DEFAULT 'namespaces',
  namespace_events_table_name text NOT NULL DEFAULT 'namespace_events',
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT namespace_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT namespace_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT namespace_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT namespace_module_namespaces_table_fkey
    FOREIGN KEY(namespaces_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT namespace_module_events_table_fkey
    FOREIGN KEY(namespace_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT namespace_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX namespace_module_database_id_idx ON metaschema_modules_public.namespace_module (database_id);

CREATE UNIQUE INDEX namespace_module_unique_scope ON metaschema_modules_public.namespace_module (database_id, scope);

CREATE TABLE metaschema_modules_public.function_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  definitions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  bindings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  schedules_table_id uuid,
  has_cron boolean NOT NULL DEFAULT false,
  definitions_table_name text NOT NULL DEFAULT 'function_definitions',
  bindings_table_name text,
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT function_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_definitions_table_fkey
    FOREIGN KEY(definitions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_bindings_table_fkey
    FOREIGN KEY(bindings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_schedules_table_fkey
    FOREIGN KEY(schedules_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX function_module_database_id_idx ON metaschema_modules_public.function_module (database_id);

CREATE UNIQUE INDEX function_module_unique_scope ON metaschema_modules_public.function_module (database_id, scope);

CREATE TABLE metaschema_modules_public.function_invocation_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  invocations_table_id uuid NOT NULL DEFAULT uuid_nil(),
  execution_logs_table_id uuid NOT NULL DEFAULT uuid_nil(),
  invocations_table_name text NOT NULL DEFAULT 'function_invocations',
  execution_logs_table_name text NOT NULL DEFAULT 'function_execution_logs',
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT function_invocation_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT function_invocation_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_invocation_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_invocation_module_invocations_table_fkey
    FOREIGN KEY(invocations_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_invocation_module_logs_table_fkey
    FOREIGN KEY(execution_logs_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_invocation_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX function_invocation_module_database_id_idx ON metaschema_modules_public.function_invocation_module (database_id);

CREATE UNIQUE INDEX function_invocation_module_unique_scope ON metaschema_modules_public.function_invocation_module (database_id, scope);

CREATE TABLE metaschema_modules_public.infra_secrets_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  secrets_table_name text NOT NULL DEFAULT 'secrets',
  api_name text DEFAULT 'config',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  entity_field text,
  policies jsonb NULL,
  provisions jsonb NULL,
  CONSTRAINT infra_secrets_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_secrets_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_secrets_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_secrets_module_secrets_table_fkey
    FOREIGN KEY(secrets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_secrets_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX infra_secrets_module_database_id_idx ON metaschema_modules_public.infra_secrets_module (database_id);

CREATE INDEX infra_secrets_module_schema_id_idx ON metaschema_modules_public.infra_secrets_module (schema_id);

CREATE INDEX infra_secrets_module_secrets_table_id_idx ON metaschema_modules_public.infra_secrets_module (secrets_table_id);

CREATE UNIQUE INDEX infra_secrets_module_unique_scope ON metaschema_modules_public.infra_secrets_module (database_id, scope);

COMMENT ON TABLE metaschema_modules_public.infra_secrets_module IS 'Namespace-backed PGP-encrypted key-value secrets module. Requires namespace_module and emits namespace:sync_secrets job triggers for K8s Secret synchronization.';

CREATE TABLE metaschema_modules_public.infra_config_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  config_table_id uuid NOT NULL DEFAULT uuid_nil(),
  config_table_name text NOT NULL DEFAULT 'config',
  api_name text DEFAULT 'config',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  CONSTRAINT infra_config_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_config_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_config_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_config_module_config_table_fkey
    FOREIGN KEY(config_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT infra_config_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX infra_config_module_database_id_idx ON metaschema_modules_public.infra_config_module (database_id);

CREATE INDEX infra_config_module_schema_id_idx ON metaschema_modules_public.infra_config_module (schema_id);

CREATE INDEX infra_config_module_config_table_id_idx ON metaschema_modules_public.infra_config_module (config_table_id);

CREATE UNIQUE INDEX infra_config_module_unique_scope ON metaschema_modules_public.infra_config_module (database_id, scope);

COMMENT ON TABLE metaschema_modules_public.infra_config_module IS 'Namespace-backed plaintext key-value config module. Requires namespace_module and emits namespace:sync_config job triggers for K8s ConfigMap synchronization.';

CREATE TABLE metaschema_modules_public.internal_secrets_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  internal_secrets_table_id uuid NOT NULL DEFAULT uuid_nil(),
  internal_secrets_table_name text NOT NULL DEFAULT 'internal_secrets',
  api_name text DEFAULT 'config',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  entity_field text,
  policies jsonb NULL,
  provisions jsonb NULL,
  CONSTRAINT internal_secrets_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT internal_secrets_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT internal_secrets_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT internal_secrets_module_internal_secrets_table_fkey
    FOREIGN KEY(internal_secrets_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT internal_secrets_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX internal_secrets_module_database_id_idx ON metaschema_modules_public.internal_secrets_module (database_id);

CREATE INDEX internal_secrets_module_schema_id_idx ON metaschema_modules_public.internal_secrets_module (schema_id);

CREATE INDEX internal_secrets_module_internal_secrets_table_id_idx ON metaschema_modules_public.internal_secrets_module (internal_secrets_table_id);

CREATE UNIQUE INDEX internal_secrets_module_unique_scope ON metaschema_modules_public.internal_secrets_module (database_id, scope);

COMMENT ON TABLE metaschema_modules_public.internal_secrets_module IS 'App-scoped PGP-encrypted internal secrets store. No namespace_module dependency and no K8s synchronization. Used by identity_providers_module for OAuth2 client_secret storage.';

CREATE TABLE metaschema_modules_public.user_credentials_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'user_secrets',
  private_api_name text DEFAULT NULL,
  CONSTRAINT user_credentials_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT user_credentials_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT user_credentials_module_table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX user_credentials_module_database_id_idx ON metaschema_modules_public.user_credentials_module (database_id);

CREATE INDEX user_credentials_module_schema_id_idx ON metaschema_modules_public.user_credentials_module (schema_id);

CREATE INDEX user_credentials_module_table_id_idx ON metaschema_modules_public.user_credentials_module (table_id);

CREATE UNIQUE INDEX user_credentials_module_unique ON metaschema_modules_public.user_credentials_module (database_id);

COMMENT ON TABLE metaschema_modules_public.user_credentials_module IS 'Per-user bcrypt credential store (password hashes, API key hashes).
     Always user-scoped with AuthzDirectOwner RLS. Consumed by user_auth_module,
     identity_providers_module, and bootstrap procedures.';

CREATE TABLE metaschema_modules_public.user_settings_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  owner_table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'user_settings',
  api_name text DEFAULT NULL,
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
  CONSTRAINT owner_table_fkey
    FOREIGN KEY(owner_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX user_settings_module_database_id_idx ON metaschema_modules_public.user_settings_module (database_id);

CREATE UNIQUE INDEX user_settings_module_unique_per_db ON metaschema_modules_public.user_settings_module (database_id);

CREATE TABLE metaschema_modules_public.i18n_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  settings_table_id uuid NOT NULL DEFAULT uuid_nil(),
  api_name text DEFAULT NULL,
  private_api_name text DEFAULT NULL,
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
  CONSTRAINT settings_table_fkey
    FOREIGN KEY(settings_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX i18n_module_database_id_idx ON metaschema_modules_public.i18n_module (database_id);

CREATE UNIQUE INDEX i18n_module_unique_per_db ON metaschema_modules_public.i18n_module (database_id);

CREATE TABLE metaschema_modules_public.function_deployment_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  deployments_table_id uuid NOT NULL DEFAULT uuid_nil(),
  deployment_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  deployments_table_name text NOT NULL DEFAULT 'function_deployments',
  deployment_events_table_name text NOT NULL DEFAULT 'function_deployment_events',
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  function_module_id uuid NULL,
  namespace_module_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT function_deployment_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_deployments_table_fkey
    FOREIGN KEY(deployments_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_events_table_fkey
    FOREIGN KEY(deployment_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT function_deployment_module_function_module_fkey
    FOREIGN KEY(function_module_id)
    REFERENCES metaschema_modules_public.function_module (id)
    ON DELETE SET NULL,
  CONSTRAINT function_deployment_module_namespace_module_fkey
    FOREIGN KEY(namespace_module_id)
    REFERENCES metaschema_modules_public.namespace_module (id)
    ON DELETE SET NULL
);

CREATE INDEX function_deployment_module_database_id_idx ON metaschema_modules_public.function_deployment_module (database_id);

CREATE UNIQUE INDEX function_deployment_module_unique_scope ON metaschema_modules_public.function_deployment_module (database_id, scope);

CREATE TABLE metaschema_modules_public.principal_auth_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  principals_table_id uuid NOT NULL DEFAULT uuid_nil(),
  principal_entities_table_id uuid NOT NULL DEFAULT uuid_nil(),
  principal_scope_overrides_table_id uuid NOT NULL DEFAULT uuid_nil(),
  users_table_id uuid NOT NULL DEFAULT uuid_nil(),
  sessions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  session_credentials_table_id uuid NOT NULL DEFAULT uuid_nil(),
  audits_table_id uuid NOT NULL DEFAULT uuid_nil(),
  principals_table_name text NOT NULL DEFAULT 'principals',
  create_principal_function text NOT NULL DEFAULT 'create_principal',
  delete_principal_function text NOT NULL DEFAULT 'delete_principal',
  create_org_principal_function text NOT NULL DEFAULT 'create_org_principal',
  delete_org_principal_function text NOT NULL DEFAULT 'delete_org_principal',
  create_org_api_key_function text NOT NULL DEFAULT 'create_org_api_key',
  revoke_org_api_key_function text NOT NULL DEFAULT 'revoke_org_api_key',
  api_name text DEFAULT 'auth',
  CONSTRAINT db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT principals_table_fkey
    FOREIGN KEY(principals_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT principal_entities_table_fkey
    FOREIGN KEY(principal_entities_table_id)
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
    ON DELETE CASCADE
);

CREATE INDEX principal_auth_module_database_id_idx ON metaschema_modules_public.principal_auth_module (database_id);

COMMENT ON CONSTRAINT principals_table_fkey ON metaschema_modules_public.principal_auth_module IS '@omit';

COMMENT ON CONSTRAINT users_table_fkey ON metaschema_modules_public.principal_auth_module IS '@omit';

COMMENT ON CONSTRAINT sessions_table_fkey ON metaschema_modules_public.principal_auth_module IS '@omit';

COMMENT ON CONSTRAINT session_credentials_table_fkey ON metaschema_modules_public.principal_auth_module IS '@omit';

COMMENT ON CONSTRAINT principal_entities_table_fkey ON metaschema_modules_public.principal_auth_module IS '@omit';

COMMENT ON TABLE metaschema_modules_public.principal_auth_module IS 'Provisions the principals subsystem: a principals table, a principal_entities junction table, create/delete mutations, and org API key management. Supports both human-owned principals (AuthzDirectOwner, AuthzHumanOnly) and org-owned principals (AuthzEntityMembership with is_admin). Org principal and org API key functions are only generated when an org-scoped memberships_module exists for the database.';

CREATE TABLE metaschema_modules_public.resource_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  resources_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_status_checks_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_definitions_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_usage_samples_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  namespace_usage_summary_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resource_installations_table_id uuid NOT NULL DEFAULT uuid_nil(),
  resources_table_name text NOT NULL DEFAULT 'resources',
  resource_events_table_name text NOT NULL DEFAULT 'resource_events',
  resource_status_checks_table_name text NOT NULL DEFAULT 'resource_status_checks',
  resource_definitions_table_name text NOT NULL DEFAULT 'resource_definitions',
  resource_usage_samples_table_name text NOT NULL DEFAULT 'resource_usage_samples',
  resource_usage_summary_table_name text NOT NULL DEFAULT 'resource_usage_summaries',
  namespace_usage_summary_table_name text NOT NULL DEFAULT 'namespace_usage_summaries',
  resource_installations_table_name text NOT NULL DEFAULT 'resource_installations',
  rollup_resource_usage_summary_function text NOT NULL DEFAULT '',
  resource_billing_rollup_function text NOT NULL DEFAULT '',
  resolved_requirements_view_name text,
  requirements_state_view_name text,
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  namespace_module_id uuid NULL,
  merkle_store_module_id uuid NULL,
  installation_store_name text NOT NULL DEFAULT 'infra',
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT resource_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_resources_table_fkey
    FOREIGN KEY(resources_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_events_table_fkey
    FOREIGN KEY(resource_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_status_checks_table_fkey
    FOREIGN KEY(resource_status_checks_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_definitions_table_fkey
    FOREIGN KEY(resource_definitions_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_usage_samples_table_fkey
    FOREIGN KEY(resource_usage_samples_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_usage_summary_table_fkey
    FOREIGN KEY(resource_usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_ns_usage_summary_table_fkey
    FOREIGN KEY(namespace_usage_summary_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_installations_table_fkey
    FOREIGN KEY(resource_installations_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_merkle_store_module_fkey
    FOREIGN KEY(merkle_store_module_id)
    REFERENCES metaschema_modules_public.merkle_store_module (id)
    ON DELETE SET NULL,
  CONSTRAINT resource_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT resource_module_namespace_module_fkey
    FOREIGN KEY(namespace_module_id)
    REFERENCES metaschema_modules_public.namespace_module (id)
    ON DELETE SET NULL
);

CREATE INDEX resource_module_database_id_idx ON metaschema_modules_public.resource_module (database_id);

CREATE UNIQUE INDEX resource_module_unique_scope ON metaschema_modules_public.resource_module (database_id, scope);

CREATE TABLE metaschema_modules_public.integration_providers_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  table_id uuid NOT NULL DEFAULT uuid_nil(),
  table_name text NOT NULL DEFAULT 'integration_providers',
  api_name text DEFAULT 'compute',
  private_api_name text DEFAULT NULL,
  scope text NOT NULL DEFAULT 'platform',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  CONSTRAINT integration_providers_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT integration_providers_module_table_fkey
    FOREIGN KEY(table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT integration_providers_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT integration_providers_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT integration_providers_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX integration_providers_module_database_id_idx ON metaschema_modules_public.integration_providers_module (database_id);

CREATE INDEX integration_providers_module_schema_id_idx ON metaschema_modules_public.integration_providers_module (schema_id);

CREATE INDEX integration_providers_module_private_schema_id_idx ON metaschema_modules_public.integration_providers_module (private_schema_id);

CREATE INDEX integration_providers_module_table_id_idx ON metaschema_modules_public.integration_providers_module (table_id);

CREATE UNIQUE INDEX integration_providers_module_unique_scope ON metaschema_modules_public.integration_providers_module (database_id, scope, prefix);

COMMENT ON TABLE metaschema_modules_public.integration_providers_module IS 'Config row for the integration_providers_module, which provisions a per-database
     integration_providers table holding branded, reusable service definitions.
     Integration providers act as a catalog of external services (e.g. Mailgun, Postgres)
     and list the canonical secret/config names required to use them.
     Other modules (function_module, resource_module) match the provider slug as a string.';

CREATE UNIQUE INDEX graph_module_one_platform_scope ON metaschema_modules_public.graph_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX events_module_one_platform_scope ON metaschema_modules_public.events_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX inference_log_module_one_platform_scope ON metaschema_modules_public.inference_log_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX compute_log_module_one_platform_scope ON metaschema_modules_public.compute_log_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX transfer_log_module_one_platform_scope ON metaschema_modules_public.transfer_log_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX storage_log_module_one_platform_scope ON metaschema_modules_public.storage_log_module (database_id) WHERE scope = 'platform';

CREATE UNIQUE INDEX db_usage_module_one_platform_scope ON metaschema_modules_public.db_usage_module (database_id) WHERE scope = 'platform';

CREATE TABLE metaschema_modules_public.webhook_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  webhook_endpoints_table_id uuid NOT NULL DEFAULT uuid_nil(),
  webhook_events_table_id uuid NOT NULL DEFAULT uuid_nil(),
  webhook_endpoints_table_name text NOT NULL DEFAULT 'webhook_endpoints',
  webhook_events_table_name text NOT NULL DEFAULT 'webhook_events',
  function_module_id uuid,
  function_invocation_module_id uuid,
  infra_secrets_module_id uuid,
  namespace_module_id uuid,
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT webhook_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_endpoints_table_fkey
    FOREIGN KEY(webhook_endpoints_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_events_table_fkey
    FOREIGN KEY(webhook_events_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_function_module_fkey
    FOREIGN KEY(function_module_id)
    REFERENCES metaschema_modules_public.function_module (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_invocation_module_fkey
    FOREIGN KEY(function_invocation_module_id)
    REFERENCES metaschema_modules_public.function_invocation_module (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_secrets_module_fkey
    FOREIGN KEY(infra_secrets_module_id)
    REFERENCES metaschema_modules_public.infra_secrets_module (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_namespace_module_fkey
    FOREIGN KEY(namespace_module_id)
    REFERENCES metaschema_modules_public.namespace_module (id)
    ON DELETE CASCADE,
  CONSTRAINT webhook_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX webhook_module_database_id_idx ON metaschema_modules_public.webhook_module (database_id);

CREATE UNIQUE INDEX webhook_module_unique_scope ON metaschema_modules_public.webhook_module (database_id, scope);

CREATE TABLE metaschema_modules_public.http_route_module (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  entity_field text,
  schema_id uuid NOT NULL DEFAULT uuid_nil(),
  private_schema_id uuid NOT NULL DEFAULT uuid_nil(),
  public_schema_name text,
  private_schema_name text,
  http_routes_table_id uuid NOT NULL DEFAULT uuid_nil(),
  http_routes_table_name text NOT NULL DEFAULT 'http_routes',
  resolver_function_name text,
  function_module_id uuid,
  resource_module_id uuid,
  storage_module_id uuid,
  api_name text,
  private_api_name text,
  scope text NOT NULL DEFAULT 'app',
  prefix text NOT NULL DEFAULT '',
  entity_table_id uuid NULL,
  policies jsonb NULL,
  provisions jsonb NULL,
  default_permissions text[] DEFAULT NULL,
  CONSTRAINT http_route_module_db_fkey
    FOREIGN KEY(database_id)
    REFERENCES metaschema_public.database (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_schema_fkey
    FOREIGN KEY(schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_private_schema_fkey
    FOREIGN KEY(private_schema_id)
    REFERENCES metaschema_public.schema (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_routes_table_fkey
    FOREIGN KEY(http_routes_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_function_module_fkey
    FOREIGN KEY(function_module_id)
    REFERENCES metaschema_modules_public.function_module (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_resource_module_fkey
    FOREIGN KEY(resource_module_id)
    REFERENCES metaschema_modules_public.resource_module (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_storage_module_fkey
    FOREIGN KEY(storage_module_id)
    REFERENCES metaschema_modules_public.storage_module (id)
    ON DELETE CASCADE,
  CONSTRAINT http_route_module_entity_table_fkey
    FOREIGN KEY(entity_table_id)
    REFERENCES metaschema_public.table (id)
    ON DELETE CASCADE
);

CREATE INDEX http_route_module_database_id_idx ON metaschema_modules_public.http_route_module (database_id);

CREATE UNIQUE INDEX http_route_module_unique_scope ON metaschema_modules_public.http_route_module (database_id, scope);