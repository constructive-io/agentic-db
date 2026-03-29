-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/memory_id/alterations/alt0000005930


ALTER TABLE agentic_db_app_public.memories_chunks 
  ALTER COLUMN memory_id DROP NOT NULL;


