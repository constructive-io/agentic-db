-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/updated_at/alterations/alt0000002724
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/columns/updated_at/column
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/policies/auth_del_entity_membership/policy



ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
    ALTER COLUMN updated_at SET DEFAULT now();

