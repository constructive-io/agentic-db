-- Deploy: schemas/agentic_db_app_public/tables/goal_habits/columns/goal_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/goal_habits/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.goal_habits 
  ADD COLUMN goal_id uuid;

