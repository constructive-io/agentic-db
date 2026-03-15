-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/status/alterations/alt0000000905
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/status/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/venues/columns/category/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".venues 
    ALTER COLUMN status SET DEFAULT 'potential';

