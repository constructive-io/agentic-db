-- Revert: schemas/agentic_db_app_public/tables/email_recipients/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".email_recipients 
  DISABLE ROW LEVEL SECURITY;


