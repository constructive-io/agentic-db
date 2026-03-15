-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/status/alterations/alt0000002726
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/status/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/session_id/column



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
    ALTER COLUMN status SET DEFAULT 'pending';

