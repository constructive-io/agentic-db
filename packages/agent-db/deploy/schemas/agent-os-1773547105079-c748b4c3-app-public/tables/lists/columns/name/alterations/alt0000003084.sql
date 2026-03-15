-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/name/alterations/alt0000003084
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/lists/columns/updated_at/alterations/alt0000003083


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".lists 
  ALTER COLUMN name SET NOT NULL;

