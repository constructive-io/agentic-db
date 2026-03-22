-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/skill_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/tags/indexes/tags_category_idx


ALTER TABLE agentic_db_app_public.skill_chunks 
  ADD COLUMN skill_id uuid;

