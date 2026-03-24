-- Deploy schemas/services_public/tables/api_schemas/table to pg

-- requires: schemas/services_public/schema

BEGIN;

CREATE TABLE services_public.api_schemas (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL,
  schema_id uuid NOT NULL,
  api_id uuid NOT NULL,
  
  --

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,
  CONSTRAINT api_fkey FOREIGN KEY (api_id) REFERENCES services_public.apis (id) ON DELETE CASCADE,
  unique(api_id, schema_id)
);

COMMENT ON TABLE services_public.api_schemas IS 'Join table linking APIs to the database schemas they expose; controls which schemas are accessible through each API';
COMMENT ON COLUMN services_public.api_schemas.id IS 'Unique identifier for this API-schema mapping';
COMMENT ON COLUMN services_public.api_schemas.database_id IS 'Reference to the metaschema database';
COMMENT ON COLUMN services_public.api_schemas.schema_id IS 'Metaschema schema being exposed through the API';
COMMENT ON COLUMN services_public.api_schemas.api_id IS 'API that exposes this schema';



CREATE INDEX api_schemas_database_id_idx ON services_public.api_schemas ( database_id );
CREATE INDEX api_schemas_schema_id_idx ON services_public.api_schemas ( schema_id );
CREATE INDEX api_schemas_api_id_idx ON services_public.api_schemas ( api_id );

COMMIT;
