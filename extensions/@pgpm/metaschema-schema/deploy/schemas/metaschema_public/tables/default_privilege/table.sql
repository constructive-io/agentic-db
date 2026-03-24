-- Deploy schemas/metaschema_public/tables/default_privilege/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/schema/table
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE metaschema_public.default_privilege (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  schema_id uuid NOT NULL,

  -- 'tables', 'functions', 'sequences'
  object_type text NOT NULL,

  -- 'ALL', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'USAGE', 'EXECUTE', etc.
  privilege text NOT NULL,

  -- role receiving the privilege (e.g. 'authenticated', 'administrator', 'anonymous')
  grantee_name text NOT NULL,

  -- true = GRANT, false = REVOKE
  is_grant boolean NOT NULL DEFAULT true,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT schema_fkey FOREIGN KEY (schema_id) REFERENCES metaschema_public.schema (id) ON DELETE CASCADE,

  UNIQUE (schema_id, object_type, privilege, grantee_name, is_grant)
);


CREATE INDEX default_privilege_schema_id_idx ON metaschema_public.default_privilege ( schema_id );
CREATE INDEX default_privilege_database_id_idx ON metaschema_public.default_privilege ( database_id );

COMMIT;
