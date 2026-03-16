-- Deploy: schemas/agent_db_app_public/tables/agent_skills/constraints/agent_skills_agent_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/agents/table
-- requires: schemas/agent_db_app_public/tables/agent_skills/table
-- requires: schemas/agent_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE "agent_db_app_public".agent_skills 
  ADD CONSTRAINT agent_skills_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent_db_app_public".agents (id) 
    ON DELETE CASCADE;

