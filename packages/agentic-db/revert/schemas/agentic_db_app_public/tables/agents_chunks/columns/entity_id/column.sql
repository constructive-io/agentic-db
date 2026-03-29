-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.agents_chunks 
  DROP COLUMN entity_id RESTRICT;


