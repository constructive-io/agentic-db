-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/key/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN key RESTRICT;


