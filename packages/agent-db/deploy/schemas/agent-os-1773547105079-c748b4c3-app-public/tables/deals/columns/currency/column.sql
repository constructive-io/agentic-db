-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/currency/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/value/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
  ADD COLUMN currency text;

