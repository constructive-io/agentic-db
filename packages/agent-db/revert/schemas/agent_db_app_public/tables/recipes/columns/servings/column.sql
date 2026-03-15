-- Revert: schemas/agent_db_app_public/tables/recipes/columns/servings/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN servings RESTRICT;


