-- Deploy: schemas/agentic_db_app_public/tables/activity_logs/constraints/activity_logs_habit_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/habits/table
-- requires: schemas/agentic_db_app_public/tables/activity_logs/table
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_file_path_idx


ALTER TABLE agentic_db_app_public.activity_logs 
  ADD CONSTRAINT activity_logs_habit_id_fkey 
    FOREIGN KEY(habit_id) 
    REFERENCES agentic_db_app_public.habits (id) 
    ON DELETE SET NULL;

