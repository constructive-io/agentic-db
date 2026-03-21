-- Revert: schemas/agentic_db_app_public/tables/processes/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.processes 
  DISABLE ROW LEVEL SECURITY;


