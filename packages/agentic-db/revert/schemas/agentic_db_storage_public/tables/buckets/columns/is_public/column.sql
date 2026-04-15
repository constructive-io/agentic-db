-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN is_public RESTRICT;


