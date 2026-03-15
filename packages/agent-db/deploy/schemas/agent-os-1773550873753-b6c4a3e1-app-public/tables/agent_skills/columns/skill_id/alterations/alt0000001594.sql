-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/columns/skill_id/alterations/alt0000001594
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/agent_skills/columns/skill_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".agent_skills 
  ALTER COLUMN skill_id SET NOT NULL;

