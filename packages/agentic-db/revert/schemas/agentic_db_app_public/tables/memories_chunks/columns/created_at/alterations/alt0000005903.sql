-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/created_at/alterations/alt0000005903


ALTER TABLE agentic_db_app_public.memories_chunks 
  ALTER COLUMN created_at DROP NOT NULL;


