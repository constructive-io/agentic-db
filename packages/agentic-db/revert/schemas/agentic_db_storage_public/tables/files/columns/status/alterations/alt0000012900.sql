-- Revert: schemas/agentic_db_storage_public/tables/files/columns/status/alterations/alt0000012900


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN status DROP NOT NULL;


