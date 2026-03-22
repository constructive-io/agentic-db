-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/memory_id/column


ALTER TABLE agentic_db_app_public.memory_chunks 
  DROP COLUMN memory_id RESTRICT;


