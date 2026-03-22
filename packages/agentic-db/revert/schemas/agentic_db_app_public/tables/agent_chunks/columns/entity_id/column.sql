-- Revert: schemas/agentic_db_app_public/tables/agent_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agent_chunks 
  DROP COLUMN entity_id RESTRICT;


