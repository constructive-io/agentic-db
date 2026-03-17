-- Revert: schemas/agentic_db_app_public/tables/contacts/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".contacts 
  DISABLE ROW LEVEL SECURITY;


