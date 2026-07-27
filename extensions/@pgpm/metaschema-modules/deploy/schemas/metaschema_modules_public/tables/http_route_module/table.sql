-- Deploy schemas/metaschema_modules_public/tables/http_route_module/table to pg

-- requires: schemas/metaschema_modules_public/schema
-- requires: schemas/metaschema_modules_public/tables/function_module/table
-- requires: schemas/metaschema_modules_public/tables/resource_module/table
-- requires: schemas/metaschema_modules_public/tables/storage_module/table

BEGIN;

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

    scope text NOT NULL,
    prefix text NOT NULL DEFAULT '',
    entity_table_id uuid NULL,

    policies jsonb NULL,
    provisions jsonb NULL,
    default_permissions text[] DEFAULT NULL,

    CONSTRAINT http_route_module_db_fkey
        FOREIGN KEY (database_id)
        REFERENCES metaschema_public.database (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_schema_fkey
        FOREIGN KEY (schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_private_schema_fkey
        FOREIGN KEY (private_schema_id)
        REFERENCES metaschema_public.schema (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_routes_table_fkey
        FOREIGN KEY (http_routes_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_function_module_fkey
        FOREIGN KEY (function_module_id)
        REFERENCES metaschema_modules_public.function_module (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_resource_module_fkey
        FOREIGN KEY (resource_module_id)
        REFERENCES metaschema_modules_public.resource_module (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_storage_module_fkey
        FOREIGN KEY (storage_module_id)
        REFERENCES metaschema_modules_public.storage_module (id)
        ON DELETE CASCADE,
    CONSTRAINT http_route_module_entity_table_fkey
        FOREIGN KEY (entity_table_id)
        REFERENCES metaschema_public.table (id)
        ON DELETE CASCADE
);

CREATE INDEX http_route_module_database_id_idx
    ON metaschema_modules_public.http_route_module (database_id);

CREATE UNIQUE INDEX http_route_module_unique_scope
    ON metaschema_modules_public.http_route_module (database_id, scope);

COMMIT;
