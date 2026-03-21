-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/columns/chunk_index/alterations/alt0000004053


ALTER TABLE agentic_db_app_public.skill_chunks 
  ADD COLUMN content text;

