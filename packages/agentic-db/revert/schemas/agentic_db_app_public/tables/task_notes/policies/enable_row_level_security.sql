-- Revert: schemas/agentic_db_app_public/tables/task_notes/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.task_notes 
  DISABLE ROW LEVEL SECURITY;


