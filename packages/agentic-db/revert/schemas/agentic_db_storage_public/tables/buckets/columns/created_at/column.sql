-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/created_at/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN created_at RESTRICT;


