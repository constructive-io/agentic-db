-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/name/alterations/alt0000003062
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/habits/columns/updated_at/alterations/alt0000003061


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".habits 
  ALTER COLUMN name SET NOT NULL;

