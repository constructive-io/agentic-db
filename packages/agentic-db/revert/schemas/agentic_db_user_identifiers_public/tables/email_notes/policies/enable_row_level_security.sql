-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/policies/enable_row_level_security


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  DISABLE ROW LEVEL SECURITY;


