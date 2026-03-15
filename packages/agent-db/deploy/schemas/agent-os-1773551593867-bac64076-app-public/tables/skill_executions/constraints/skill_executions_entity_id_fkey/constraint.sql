-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/constraints/skill_executions_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-users-public/tables/users/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skill_executions/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/prompts/columns/embedding/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".skill_executions 
  ADD CONSTRAINT skill_executions_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773551593867-bac64076-users-public".users (id) 
    ON DELETE CASCADE;

