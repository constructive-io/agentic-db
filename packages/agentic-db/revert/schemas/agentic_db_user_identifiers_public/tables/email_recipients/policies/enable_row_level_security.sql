-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/policies/enable_row_level_security


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  DISABLE ROW LEVEL SECURITY;


