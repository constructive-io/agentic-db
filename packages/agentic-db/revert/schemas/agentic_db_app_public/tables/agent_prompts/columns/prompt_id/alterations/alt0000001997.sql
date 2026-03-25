-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/prompt_id/alterations/alt0000001997


ALTER TABLE "agentic_db_app_public".agent_prompts 
  ALTER COLUMN prompt_id DROP NOT NULL;


