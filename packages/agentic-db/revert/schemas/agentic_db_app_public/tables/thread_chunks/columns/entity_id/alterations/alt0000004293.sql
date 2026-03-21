-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/columns/entity_id/alterations/alt0000004293


ALTER TABLE agentic_db_app_public.thread_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


