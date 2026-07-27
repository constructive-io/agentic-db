-- Deploy schemas/metaschema_public/tables/spatial_relation/table to pg

-- requires: schemas/metaschema_public/tables/field/table
-- requires: schemas/metaschema_public/tables/table/table
-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/types/object_category

BEGIN;

CREATE TABLE metaschema_public.spatial_relation (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    database_id uuid NOT NULL DEFAULT uuid_nil(),

    -- owner side
    table_id uuid NOT NULL,
    field_id uuid NOT NULL,

    -- target side
    ref_table_id uuid NOT NULL,
    ref_field_id uuid NOT NULL,

    -- relation shape
    name text NOT NULL,
    operator text NOT NULL,
    param_name text NULL,

    category metaschema_public.object_category NOT NULL DEFAULT 'app',

    tags citext[] NOT NULL DEFAULT '{}',

    created_at timestamptz DEFAULT now(),
    updated_at timestamptz DEFAULT now(),

    CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
    CONSTRAINT table_fkey FOREIGN KEY (table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT field_fkey FOREIGN KEY (field_id) REFERENCES metaschema_public.field (id) ON DELETE CASCADE,
    CONSTRAINT ref_table_fkey FOREIGN KEY (ref_table_id) REFERENCES metaschema_public.table (id) ON DELETE CASCADE,
    CONSTRAINT ref_field_fkey FOREIGN KEY (ref_field_id) REFERENCES metaschema_public.field (id) ON DELETE CASCADE,

    UNIQUE (table_id, name),

    CHECK (operator IN (
        'st_contains',
        'st_within',
        'st_covers',
        'st_coveredby',
        'st_intersects',
        'st_equals',
        'st_bbox_intersects',
        'st_dwithin'
    )),

    CHECK (
        (operator =  'st_dwithin' AND param_name IS NOT NULL)
        OR
        (operator <> 'st_dwithin' AND param_name IS NULL)
    )
);

CREATE INDEX spatial_relation_table_id_idx     ON metaschema_public.spatial_relation ( table_id );
CREATE INDEX spatial_relation_field_id_idx     ON metaschema_public.spatial_relation ( field_id );
CREATE INDEX spatial_relation_database_id_idx  ON metaschema_public.spatial_relation ( database_id );
CREATE INDEX spatial_relation_ref_table_id_idx ON metaschema_public.spatial_relation ( ref_table_id );
CREATE INDEX spatial_relation_ref_field_id_idx ON metaschema_public.spatial_relation ( ref_field_id );

COMMIT;
