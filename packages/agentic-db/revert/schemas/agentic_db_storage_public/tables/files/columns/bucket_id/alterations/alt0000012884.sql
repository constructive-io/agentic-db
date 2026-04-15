-- Revert: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/alterations/alt0000012884


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN bucket_id DROP NOT NULL;


