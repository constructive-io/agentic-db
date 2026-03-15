-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/is_active/alterations/alt0000001233
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/is_active/column
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/trigger_config/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
    ALTER COLUMN is_active SET DEFAULT true;

