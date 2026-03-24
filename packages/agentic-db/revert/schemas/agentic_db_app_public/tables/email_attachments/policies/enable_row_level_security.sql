-- Revert: schemas/agentic_db_app_public/tables/email_attachments/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".email_attachments 
  DISABLE ROW LEVEL SECURITY;


