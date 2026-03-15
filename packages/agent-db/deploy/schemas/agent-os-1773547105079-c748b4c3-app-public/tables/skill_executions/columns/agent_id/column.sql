-- Deploy: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/agent_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/skill_executions/columns/skill_id/alterations/alt0000002677


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".skill_executions 
  ADD COLUMN agent_id uuid;

