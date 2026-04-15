-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/type/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN type RESTRICT;


