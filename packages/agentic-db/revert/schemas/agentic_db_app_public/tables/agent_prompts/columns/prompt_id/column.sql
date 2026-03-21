-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/prompt_id/column


ALTER TABLE "agentic_db_app_public".agent_prompts 
  DROP COLUMN prompt_id RESTRICT;


