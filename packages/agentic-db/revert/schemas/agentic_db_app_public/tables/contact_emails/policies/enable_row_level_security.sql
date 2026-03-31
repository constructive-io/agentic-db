-- Revert: schemas/agentic_db_app_public/tables/contact_emails/policies/enable_row_level_security


ALTER TABLE agentic_db_app_public.contact_emails 
  DISABLE ROW LEVEL SECURITY;


