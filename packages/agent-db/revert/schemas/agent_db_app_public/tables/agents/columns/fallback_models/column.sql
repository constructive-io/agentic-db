-- Revert: schemas/agent_db_app_public/tables/agents/columns/fallback_models/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN fallback_models RESTRICT;


