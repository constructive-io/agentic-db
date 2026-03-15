-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/usage_count/alterations/alt0000000937
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/category/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/tags/columns/usage_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".tags 
    ALTER COLUMN usage_count SET DEFAULT 0;

