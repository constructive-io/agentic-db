-- Revert: schemas/agentic_db_storage_public/tables/files/columns/id/alterations/alt0000012878


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN id DROP NOT NULL;


