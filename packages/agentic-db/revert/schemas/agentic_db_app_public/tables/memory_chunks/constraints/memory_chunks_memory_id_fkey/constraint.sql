-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/constraints/memory_chunks_memory_id_fkey/constraint


ALTER TABLE agentic_db_app_public.memory_chunks 
  DROP CONSTRAINT memory_chunks_memory_id_fkey;


