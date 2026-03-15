-- Revert: schemas/agent_db_app_public/tables/agents/columns/updated_at/column


ALTER TABLE "agent_db_app_public".agents 
  DROP COLUMN updated_at RESTRICT;


