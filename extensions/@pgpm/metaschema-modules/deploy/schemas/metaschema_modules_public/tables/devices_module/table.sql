-- Deploy schemas/metaschema_modules_public/tables/devices_module/table to pg

-- requires: schemas/metaschema_modules_public/schema

BEGIN;

CREATE TABLE metaschema_modules_public.devices_module (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL,

    --
    schema_id uuid NOT NULL DEFAULT uuid_nil(),
    user_devices_table_id uuid NOT NULL DEFAULT uuid_nil(),
    device_settings_table_id uuid NOT NULL DEFAULT uuid_nil(),

    user_devices_table_name text NOT NULL DEFAULT 'auth_user_devices',
    device_settings_table_name text NOT NULL DEFAULT 'app_settings_device',
    --

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
    CONSTRAINT user_devices_table_fkey FOREIGN KEY (user_devices_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT device_settings_table_fkey FOREIGN KEY (device_settings_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,

    --
    CONSTRAINT devices_module_database_id_uniq UNIQUE(database_id)
);

CREATE INDEX devices_module_database_id_idx ON metaschema_modules_public.devices_module ( database_id );

COMMENT ON CONSTRAINT user_devices_table_fkey
     ON metaschema_modules_public.devices_module IS E'@fieldName userDevicesTableByUserDevicesTableId';
COMMENT ON CONSTRAINT device_settings_table_fkey
     ON metaschema_modules_public.devices_module IS E'@fieldName deviceSettingsTableByDeviceSettingsTableId';

COMMIT;
