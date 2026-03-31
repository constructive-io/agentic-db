-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/updated_at/alterations/alt0000003152


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


