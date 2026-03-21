-- Revert: schemas/agentic_db_app_public/tables/sessions/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.sessions 
  DISABLE ROW LEVEL SECURITY;


