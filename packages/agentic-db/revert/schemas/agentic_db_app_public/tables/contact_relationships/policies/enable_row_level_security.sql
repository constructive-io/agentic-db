-- Revert: schemas/agentic_db_app_public/tables/contact_relationships/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".contact_relationships 
  DISABLE ROW LEVEL SECURITY;


