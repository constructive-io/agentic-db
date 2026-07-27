-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/agent_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.agent_prompts 
  ALTER COLUMN agent_id DROP NOT NULL;


