-- Revert: schemas/agent_db_app_public/tables/agent_prompts/columns/prompt_id/alterations/alt0000004776


ALTER TABLE "agent_db_app_public".agent_prompts 
  ALTER COLUMN prompt_id DROP NOT NULL;


