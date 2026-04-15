-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/updated_at/alterations/alt0000012859


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN updated_at DROP DEFAULT;


