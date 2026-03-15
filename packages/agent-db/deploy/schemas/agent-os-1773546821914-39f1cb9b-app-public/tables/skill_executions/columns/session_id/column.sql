-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/skill_executions/columns/agent_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".skill_executions 
  ADD COLUMN session_id uuid;

