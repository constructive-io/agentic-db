-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".recipe_chunks 
  DISABLE ROW LEVEL SECURITY;


