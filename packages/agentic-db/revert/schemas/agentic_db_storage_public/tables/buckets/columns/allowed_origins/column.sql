-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_origins/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN allowed_origins RESTRICT;


