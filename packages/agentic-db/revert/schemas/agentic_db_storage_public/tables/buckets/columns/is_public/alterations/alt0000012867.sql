-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/alterations/alt0000012867


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN is_public DROP NOT NULL;


