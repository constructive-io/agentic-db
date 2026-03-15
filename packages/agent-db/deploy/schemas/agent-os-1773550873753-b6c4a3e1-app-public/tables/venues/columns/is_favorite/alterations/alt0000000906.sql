-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/is_favorite/alterations/alt0000000906
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/is_favorite/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/price_level/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
    ALTER COLUMN is_favorite SET DEFAULT false;

