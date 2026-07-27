-- Revert: schemas/agentic_db_app_public/tables/documents/columns/id/alterations/alt0000000001


ALTER TABLE agentic_db_app_public.documents 
  ALTER COLUMN id DROP NOT NULL;


