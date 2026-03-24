-- Revert: schemas/agentic_db_app_public/tables/hiking_trails/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".hiking_trails 
  DISABLE ROW LEVEL SECURITY;


