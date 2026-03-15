-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/usage_count/alterations/alt0000000937
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/category/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/tags/columns/usage_count/column



ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".tags 
    ALTER COLUMN usage_count SET DEFAULT 0;

