-- Revert: schemas/agent_db_app_public/tables/prompts/columns/id/alterations/alt0000004315


ALTER TABLE "agent_db_app_public".prompts 
  ALTER COLUMN id DROP NOT NULL;


