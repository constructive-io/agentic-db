-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/constraints/agent_skills_entity_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-users-public/tables/users/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  ADD CONSTRAINT agent_skills_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES "agent-os-1773550873753-b6c4a3e1-users-public".users (id) 
    ON DELETE CASCADE;

