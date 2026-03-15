-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/active_count/alterations/alt0000000916
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/overview/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notes/columns/active_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notes 
    ALTER COLUMN active_count SET DEFAULT 0;

