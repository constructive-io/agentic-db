-- Deploy: schemas/agentic_db_app_public/tables/agent_skills/constraints/agent_skills_skill_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/agent_skills/table
-- requires: schemas/agentic_db_app_public/tables/expense_contacts/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.agent_skills 
  ADD CONSTRAINT agent_skills_skill_id_fkey 
    FOREIGN KEY(skill_id) 
    REFERENCES agentic_db_app_public.skills (id) 
    ON DELETE CASCADE;

