-- Revert: schemas/agentic_db_app_public/tables/memory_chunks/columns/entity_id/alterations/alt0000004038


ALTER TABLE agentic_db_app_public.memory_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


