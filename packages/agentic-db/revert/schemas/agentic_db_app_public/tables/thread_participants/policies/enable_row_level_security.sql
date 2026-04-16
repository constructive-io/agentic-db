-- Revert: schemas/agentic_db_app_public/tables/thread_participants/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.thread_participants 
  DISABLE ROW LEVEL SECURITY;


