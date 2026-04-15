-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/created_at/alterations/alt0000012858


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN created_at DROP DEFAULT;


