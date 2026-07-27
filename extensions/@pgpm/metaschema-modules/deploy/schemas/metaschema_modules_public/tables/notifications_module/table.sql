-- Deploy schemas/metaschema_modules_public/tables/notifications_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.notifications_module (
    id uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    database_id uuid NOT NULL,


    -- Scope-key column name on the generated table ('scope_entity_id' here).
    -- Recorded so consumers read it as a stored fact instead of hardcoding.
    entity_field text,
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    private_schema_id uuid NOT NULL DEFAULT uuid_nil(),

  -- Schema name overrides: when set, the trigger uses these instead of hardcoded defaults.
  public_schema_name text,
  private_schema_name text,

    notifications_table_id uuid NOT NULL DEFAULT uuid_nil(),
    read_state_table_id uuid NOT NULL DEFAULT uuid_nil(),
    -- Feature-gated tables: NULL when the corresponding has_* flag is off.
    -- The generator returns NULL for tables it skipped; the insert trigger
    -- forwards that through unchanged.
    preferences_table_id uuid,
    channels_table_id uuid,
    delivery_log_table_id uuid,
    suppressions_table_id uuid,

    owner_table_id uuid NOT NULL DEFAULT uuid_nil(),

    -- Optional: table_template_module rows to extend with notifs_* columns.
    -- Resolved at install time; NULL disables the corresponding extension.
    user_settings_table_id uuid,
    organization_settings_table_id uuid,

    -- Sub-feature toggles. Resolved at module-generation time so the generated
    -- schema has zero dead code. Validated by the BEFORE INSERT trigger; see
    -- insert_notifications_module for dependency rules.
    has_channels boolean NOT NULL DEFAULT true,
    has_preferences boolean NOT NULL DEFAULT true,
    has_settings_extension boolean NOT NULL DEFAULT false,
    has_digest_metadata boolean NOT NULL DEFAULT false,
    has_subscriptions boolean NOT NULL DEFAULT false,

    -- Default permissions: permission names auto-granted to new members.
    -- NULL uses the module's built-in defaults; explicit array overrides them.
    default_permissions text[] DEFAULT NULL,

    -- API routing (configurable per-module)
    api_name text DEFAULT 'notifications',
    private_api_name text DEFAULT NULL,

    --
    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT notifications_table_fkey FOREIGN KEY (notifications_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT read_state_table_fkey FOREIGN KEY (read_state_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT preferences_table_fkey FOREIGN KEY (preferences_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT channels_table_fkey FOREIGN KEY (channels_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT delivery_log_table_fkey FOREIGN KEY (delivery_log_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT suppressions_table_fkey FOREIGN KEY (suppressions_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT owner_table_fkey FOREIGN KEY (owner_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT user_settings_table_fkey FOREIGN KEY (user_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT organization_settings_table_fkey FOREIGN KEY (organization_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE SET NULL,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT private_schema_fkey FOREIGN KEY (private_schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE
);

COMMENT ON CONSTRAINT schema_fkey ON metaschema_modules_public.notifications_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT private_schema_fkey ON metaschema_modules_public.notifications_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT notifications_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName notificationsTableByNotificationsTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT read_state_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName readStateTableByReadStateTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT preferences_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName preferencesTableByPreferencesTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT channels_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName channelsTableByChannelsTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT delivery_log_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName deliveryLogTableByDeliveryLogTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT suppressions_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName suppressionsTableBySuppressionsTableId';
COMMENT ON CONSTRAINT owner_table_fkey ON metaschema_modules_public.notifications_module IS E'@omit manyToMany';
COMMENT ON CONSTRAINT user_settings_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName userSettingsTableByUserSettingsTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT organization_settings_table_fkey ON metaschema_modules_public.notifications_module IS E'@fieldName organizationSettingsTableByOrganizationSettingsTableId\n@omit manyToMany';
COMMENT ON CONSTRAINT db_fkey ON metaschema_modules_public.notifications_module IS E'@omit manyToMany';
CREATE INDEX notifications_module_database_id_idx ON metaschema_modules_public.notifications_module ( database_id );

COMMIT;
