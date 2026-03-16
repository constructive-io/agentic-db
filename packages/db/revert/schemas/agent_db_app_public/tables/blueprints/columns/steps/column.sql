-- Revert: schemas/agent_db_app_public/tables/blueprints/columns/steps/column


ALTER TABLE "agent_db_app_public".blueprints 
  DROP COLUMN steps RESTRICT;


