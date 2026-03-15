-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/skill_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000001115


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ADD COLUMN skill_id uuid;

