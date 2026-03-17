-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/cuisine/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN cuisine RESTRICT;


