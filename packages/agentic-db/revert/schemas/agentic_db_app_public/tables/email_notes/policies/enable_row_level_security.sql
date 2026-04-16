-- Revert: schemas/agentic_db_app_public/tables/email_notes/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.email_notes 
  DISABLE ROW LEVEL SECURITY;


