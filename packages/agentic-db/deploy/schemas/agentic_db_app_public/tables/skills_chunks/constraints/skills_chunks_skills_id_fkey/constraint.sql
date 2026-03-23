-- Deploy: schemas/agentic_db_app_public/tables/skills_chunks/constraints/skills_chunks_skills_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.skills_chunks 
  ADD CONSTRAINT skills_chunks_skills_id_fkey 
    FOREIGN KEY(skills_id) 
    REFERENCES agentic_db_app_public.skills (id) 
    ON DELETE CASCADE;

