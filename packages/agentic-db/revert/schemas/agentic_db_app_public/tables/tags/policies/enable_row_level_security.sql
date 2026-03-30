-- Revert: schemas/agentic_db_app_public/tables/tags/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".tags 
  DISABLE ROW LEVEL SECURITY;


