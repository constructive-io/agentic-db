-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/policies/enable_row_level_security


ALTER TABLE agentic_db_user_identifiers_public.emails 
  DISABLE ROW LEVEL SECURITY;


