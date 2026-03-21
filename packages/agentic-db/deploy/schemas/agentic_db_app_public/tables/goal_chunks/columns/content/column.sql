-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/content/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/columns/chunk_index/alterations/alt0000004063


ALTER TABLE agentic_db_app_public.goal_chunks 
  ADD COLUMN content text;

