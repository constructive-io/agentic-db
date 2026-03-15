-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/value/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/stage/alterations/alt0000002446


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  ADD COLUMN value numeric;

