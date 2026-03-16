-- Revert: schemas/agentic_db_app_public/tables/recipes/columns/difficulty/column


ALTER TABLE "agentic_db_app_public".recipes 
  DROP COLUMN difficulty RESTRICT;


