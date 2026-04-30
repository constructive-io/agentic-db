-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/updated_at/alterations/alt0000000783


ALTER TABLE agentic_db_app_public.documents_chunks 
  ALTER COLUMN updated_at DROP DEFAULT;


