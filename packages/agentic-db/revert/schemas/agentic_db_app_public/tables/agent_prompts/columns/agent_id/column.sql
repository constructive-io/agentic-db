-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/column


ALTER TABLE agentic_db_app_public.agent_prompts 
  DROP COLUMN agent_id RESTRICT;


