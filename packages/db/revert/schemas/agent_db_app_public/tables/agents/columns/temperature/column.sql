-- Revert: schemas/agent_db_app_public/tables/agents/columns/temperature/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN temperature RESTRICT;


