-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/constraints/skill_tools_entity_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_users_public/tables/users/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/policies/auth_del_entity_membership/policy


ALTER TABLE agentic_db_app_public.skill_tools 
  ADD CONSTRAINT skill_tools_entity_id_fkey 
    FOREIGN KEY(entity_id) 
    REFERENCES agentic_db_users_public.users (id) 
    ON DELETE CASCADE;

