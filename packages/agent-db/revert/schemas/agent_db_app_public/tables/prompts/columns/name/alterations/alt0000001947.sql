-- Revert: schemas/agent_db_app_public/tables/prompts/columns/name/alterations/alt0000001947


ALTER TABLE "agent_db_app_public".prompts 
  ALTER COLUMN name DROP NOT NULL;


