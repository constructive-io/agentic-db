-- Revert: schemas/agent_db_app_public/tables/agents/columns/name/alterations/alt0000001969


ALTER TABLE "agent_db_app_public".agents 
  ALTER COLUMN name DROP NOT NULL;


