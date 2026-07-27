-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/created_at/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.documents_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


