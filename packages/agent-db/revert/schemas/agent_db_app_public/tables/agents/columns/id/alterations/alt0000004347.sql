-- Revert: schemas/agent_db_app_public/tables/agents/columns/id/alterations/alt0000004347


ALTER TABLE "agent_db_app_public".agents 
  ALTER COLUMN id DROP NOT NULL;


