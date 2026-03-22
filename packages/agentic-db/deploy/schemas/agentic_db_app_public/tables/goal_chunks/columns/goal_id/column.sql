-- Deploy: schemas/agentic_db_app_public/tables/goal_chunks/columns/goal_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_chunks/table
-- requires: schemas/agentic_db_app_public/tables/memory_chunks/indexes/memory_chunks_memory_id_idx


ALTER TABLE agentic_db_app_public.goal_chunks 
  ADD COLUMN goal_id uuid;

