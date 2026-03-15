-- Revert: schemas/agent_db_app_public/tables/prompts/columns/content/alterations/alt0000004275


ALTER TABLE "agent_db_app_public".prompts 
  ALTER COLUMN content DROP NOT NULL;


