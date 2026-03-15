-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/constraints/agent_skills_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agent_skills/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".agent_skills 
  ADD CONSTRAINT agent_skills_pkey PRIMARY KEY (id);

