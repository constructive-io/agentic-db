-- Revert: schemas/agentic_db_app_public/tables/hiking_trails_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".hiking_trails_chunks 
  DISABLE ROW LEVEL SECURITY;


