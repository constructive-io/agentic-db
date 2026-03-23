-- Deploy schemas/metaschema_public/tables/view_grant/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/view/table
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE metaschema_public.view_grant (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  view_id uuid NOT NULL,
  grantee_name text NOT NULL,
  privilege text NOT NULL,

  with_grant_option boolean DEFAULT false,

  -- true = GRANT, false = REVOKE
  is_grant boolean NOT NULL DEFAULT true,

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT view_fkey FOREIGN KEY (view_id) REFERENCES metaschema_public.view (id) ON DELETE CASCADE,

  UNIQUE (view_id, grantee_name, privilege, is_grant)
);


CREATE INDEX view_grant_view_id_idx ON metaschema_public.view_grant ( view_id );
CREATE INDEX view_grant_database_id_idx ON metaschema_public.view_grant ( database_id );

COMMIT;
