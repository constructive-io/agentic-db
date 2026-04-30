-- Revert: schemas/agentic_db_app_public/tables/documents/columns/embedding_stale/alterations/alt0000000772


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN embedding_stale DROP NOT NULL;


