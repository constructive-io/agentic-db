-- Revert: schemas/agentic_db_app_public/tables/contact_links/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".contact_links 
  DISABLE ROW LEVEL SECURITY;


