-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/content/alterations/alt0000006361


ALTER TABLE agentic_db_app_public.memory_chunks 
  ALTER COLUMN content DROP NOT NULL;


