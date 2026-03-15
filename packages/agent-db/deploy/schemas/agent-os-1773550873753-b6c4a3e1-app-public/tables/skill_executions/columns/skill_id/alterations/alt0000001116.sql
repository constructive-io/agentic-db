-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/skill_id/alterations/alt0000001116
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/skill_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000001115


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".skill_executions 
  ALTER COLUMN skill_id SET NOT NULL;

