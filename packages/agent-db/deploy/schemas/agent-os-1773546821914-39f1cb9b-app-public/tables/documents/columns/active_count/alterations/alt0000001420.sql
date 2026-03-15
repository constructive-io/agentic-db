-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/active_count/alterations/alt0000001420
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/overview/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/documents/columns/active_count/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".documents 
    ALTER COLUMN active_count SET DEFAULT 0;

