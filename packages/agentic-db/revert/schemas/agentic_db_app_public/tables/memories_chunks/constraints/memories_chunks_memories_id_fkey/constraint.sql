-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/constraints/memories_chunks_memories_id_fkey/constraint


ALTER TABLE agentic_db_app_public.memories_chunks 
  DROP CONSTRAINT memories_chunks_memories_id_fkey;


