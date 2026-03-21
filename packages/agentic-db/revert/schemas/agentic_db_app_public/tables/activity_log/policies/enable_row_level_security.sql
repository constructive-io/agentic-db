-- Revert: schemas/agentic_db_app_public/tables/activity_log/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.activity_log 
  DISABLE ROW LEVEL SECURITY;


