-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/entity_id/column


ALTER TABLE agentic_db_app_public.memory_chunks 
  DROP COLUMN entity_id RESTRICT;


