-- Revert: schemas/agentic_db_app_public/tables/company_images/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".company_images 
  DISABLE ROW LEVEL SECURITY;


