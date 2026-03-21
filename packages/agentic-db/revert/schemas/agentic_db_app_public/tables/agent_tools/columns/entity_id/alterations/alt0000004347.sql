-- Revert: schemas/agentic_db_app_public/tables/agent_tools/columns/entity_id/alterations/alt0000004347


ALTER TABLE agentic_db_app_public.agent_tools 
  ALTER COLUMN entity_id DROP NOT NULL;


