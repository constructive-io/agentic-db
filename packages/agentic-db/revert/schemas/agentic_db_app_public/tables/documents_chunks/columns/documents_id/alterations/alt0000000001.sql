-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/documents_id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.documents_chunks 
  ALTER COLUMN documents_id DROP NOT NULL;


