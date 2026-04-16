-- Revert: schemas/agentic_db_app_public/tables/company_notes/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.company_notes 
  DISABLE ROW LEVEL SECURITY;


