-- Deploy schemas/metaschema_public/tables/view_rule/table to pg

-- requires: schemas/metaschema_public/schema
-- requires: schemas/metaschema_public/tables/view/table
-- requires: schemas/metaschema_public/tables/database/table

BEGIN;

CREATE TABLE metaschema_public.view_rule (
  id uuid PRIMARY KEY DEFAULT uuidv7(),
  database_id uuid NOT NULL DEFAULT uuid_nil(),

  view_id uuid NOT NULL,
  name text NOT NULL,
  event text NOT NULL,
  action text NOT NULL DEFAULT 'NOTHING',

  CONSTRAINT db_fkey FOREIGN KEY (database_id) REFERENCES metaschema_public.database (id) ON DELETE CASCADE,
  CONSTRAINT view_fkey FOREIGN KEY (view_id) REFERENCES metaschema_public.view (id) ON DELETE CASCADE,

  UNIQUE (view_id, name)
);

COMMENT ON TABLE metaschema_public.view_rule IS 'DO INSTEAD rules for views (e.g., read-only enforcement)';
COMMENT ON COLUMN metaschema_public.view_rule.event IS 'INSERT, UPDATE, or DELETE';
COMMENT ON COLUMN metaschema_public.view_rule.action IS 'NOTHING (for read-only) or custom action';


CREATE INDEX view_rule_view_id_idx ON metaschema_public.view_rule ( view_id );
CREATE INDEX view_rule_database_id_idx ON metaschema_public.view_rule ( database_id );

COMMIT;
