-- Revert: schemas/agent_db_app_public/tables/recipes/columns/instructions/column


ALTER TABLE "agent_db_app_public".recipes 
  DROP COLUMN instructions RESTRICT;


