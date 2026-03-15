-- Revert: schemas/agent_db_app_public/tables/agents/columns/created_at/alterations/alt0000004302


ALTER TABLE "agent_db_app_public".agents 
  ALTER COLUMN created_at DROP NOT NULL;


