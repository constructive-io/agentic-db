-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/name/alterations/alt0000003111
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/recipes/columns/updated_at/alterations/alt0000003110


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".recipes 
  ALTER COLUMN name SET NOT NULL;

