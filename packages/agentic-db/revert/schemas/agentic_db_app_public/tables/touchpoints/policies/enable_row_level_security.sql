-- Revert: schemas/agentic_db_app_public/tables/touchpoints/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".touchpoints 
  DISABLE ROW LEVEL SECURITY;


