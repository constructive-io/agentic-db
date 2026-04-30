-- Revert: schemas/agentic_db_app_public/tables/documents_chunks/columns/content/alterations/alt0000000778


ALTER TABLE agentic_db_app_public.documents_chunks 
  ALTER COLUMN content DROP NOT NULL;


