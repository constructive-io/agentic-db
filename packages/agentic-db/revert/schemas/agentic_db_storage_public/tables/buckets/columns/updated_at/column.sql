-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/updated_at/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN updated_at RESTRICT;


