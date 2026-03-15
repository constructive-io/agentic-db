-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/name/alterations/alt0000002445
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/name/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/updated_at/alterations/alt0000002444


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  ALTER COLUMN name SET NOT NULL;

