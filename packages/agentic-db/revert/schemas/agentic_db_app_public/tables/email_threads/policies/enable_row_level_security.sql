-- Revert: schemas/agentic_db_app_public/tables/email_threads/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.email_threads 
  DISABLE ROW LEVEL SECURITY;


