-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/status/alterations/alt0000000905
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/status/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/venues/columns/category/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".venues 
    ALTER COLUMN status SET DEFAULT 'potential';

