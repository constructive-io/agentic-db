-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/currency/alterations/alt0000002447
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/value/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/deals/columns/currency/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".deals 
    ALTER COLUMN currency SET DEFAULT 'USD';

