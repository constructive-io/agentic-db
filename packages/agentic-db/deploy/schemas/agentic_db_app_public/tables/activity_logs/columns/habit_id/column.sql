-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/columns/habit_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ADD COLUMN habit_id uuid;

