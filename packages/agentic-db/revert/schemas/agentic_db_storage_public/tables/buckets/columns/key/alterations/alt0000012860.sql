-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/key/alterations/alt0000012860


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN key DROP NOT NULL;


