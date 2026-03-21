-- Deploy: schemas/agentic_db_app_public/tables/skill_chunks/columns/id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skill_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.skill_chunks 
  ADD COLUMN id uuid;

