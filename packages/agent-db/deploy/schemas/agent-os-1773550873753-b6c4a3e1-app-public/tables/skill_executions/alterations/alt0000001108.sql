-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/alterations/alt0000001108
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/prompts/columns/embedding/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  DISABLE ROW LEVEL SECURITY;

