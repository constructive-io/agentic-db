-- Revert: schemas/agent_db_app_public/tables/recipes/columns/name/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN name RESTRICT;


