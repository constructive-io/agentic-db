-- Revert: schemas/agentic_db_app_public/tables/agents_chunks/constraints/agents_chunks_entity_id_fkey/constraint


ALTER TABLE agentic_db_app_public.agents_chunks 
  DROP CONSTRAINT agents_chunks_entity_id_fkey;


