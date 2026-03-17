-- Revert: schemas/agentic_db_app_public/tables/blueprints/policies/enable_row_level_security


ALTER TABLE "agentic_db_app_public".blueprints 
  DISABLE ROW LEVEL SECURITY;


