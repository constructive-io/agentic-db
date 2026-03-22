-- Revert: schemas/agentic_db_app_public/tables/hiking_trail_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".hiking_trail_chunks 
  DISABLE ROW LEVEL SECURITY;


