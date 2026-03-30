-- Revert: schemas/agentic_db_app_public/tables/emails_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".emails_chunks 
  DISABLE ROW LEVEL SECURITY;


