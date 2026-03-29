-- Revert: schemas/agentic_db_app_public/tables/agent_prompts/columns/entity_id/alterations/alt0000004127


ALTER TABLE agentic_db_app_public.agent_prompts 
  ALTER COLUMN entity_id DROP NOT NULL;


