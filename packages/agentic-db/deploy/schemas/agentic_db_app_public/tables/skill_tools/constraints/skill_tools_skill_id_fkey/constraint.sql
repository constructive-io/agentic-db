-- Deploy: schemas/agentic_db_app_public/tables/skill_tools/constraints/skill_tools_skill_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skill_tools/table
-- requires: schemas/agentic_db_app_public/tables/company_memories/indexes/company_memories_memory_id_idx


ALTER TABLE agentic_db_app_public.skill_tools 
  ADD CONSTRAINT skill_tools_skill_id_fkey 
    FOREIGN KEY(skill_id) 
    REFERENCES agentic_db_app_public.skills (id) 
    ON DELETE CASCADE;

