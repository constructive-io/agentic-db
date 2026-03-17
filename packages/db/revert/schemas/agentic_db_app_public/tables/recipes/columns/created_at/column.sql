-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/created_at/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN created_at RESTRICT;


