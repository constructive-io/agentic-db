-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/memory_id/column


ALTER TABLE agentic_db_app_public.memories_chunks 
  DROP COLUMN memory_id RESTRICT;


