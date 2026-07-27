-- Revert: schemas/agentic_db_app_public/tables/documents/columns/created_at/alterations/alt0000000002


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN created_at DROP DEFAULT;


