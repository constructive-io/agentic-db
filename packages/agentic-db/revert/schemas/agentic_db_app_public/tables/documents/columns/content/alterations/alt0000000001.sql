-- Revert: schemas/agentic_db_app_public/tables/documents/columns/content/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN content DROP NOT NULL;


