-- Revert: schemas/agent_db_app_public/tables/recipes/columns/difficulty/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN difficulty RESTRICT;


