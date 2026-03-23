-- Revert: schemas/agentic_db_app_public/tables/venues_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".venues_chunks 
  DISABLE ROW LEVEL SECURITY;


