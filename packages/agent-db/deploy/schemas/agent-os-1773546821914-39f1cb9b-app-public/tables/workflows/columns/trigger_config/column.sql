-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/trigger_config/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/workflows/columns/trigger_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".workflows 
  ADD COLUMN trigger_config jsonb;

