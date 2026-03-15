-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/session_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/agent_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  ADD COLUMN session_id uuid;

