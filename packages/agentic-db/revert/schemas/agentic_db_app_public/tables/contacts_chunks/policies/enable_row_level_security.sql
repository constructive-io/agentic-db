-- Revert: schemas/agentic_db_app_public/tables/contacts_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".contacts_chunks 
  DISABLE ROW LEVEL SECURITY;


