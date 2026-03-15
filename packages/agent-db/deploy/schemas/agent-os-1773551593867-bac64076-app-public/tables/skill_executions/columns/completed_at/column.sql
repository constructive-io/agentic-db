-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/completed_at/column
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/started_at/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  ADD COLUMN completed_at timestamptz;

