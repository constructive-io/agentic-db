-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/is_favorite/alterations/alt0000002467
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/is_favorite/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venues/columns/price_level/column



ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venues 
    ALTER COLUMN is_favorite SET DEFAULT false;

