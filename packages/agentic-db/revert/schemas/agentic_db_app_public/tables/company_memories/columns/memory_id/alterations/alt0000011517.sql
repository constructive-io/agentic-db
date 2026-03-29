-- Revert: schemas/agentic_db_app_public/tables/company_memories/columns/memory_id/alterations/alt0000011517


ALTER TABLE agentic_db_app_public.company_memories 
  ALTER COLUMN memory_id DROP NOT NULL;


