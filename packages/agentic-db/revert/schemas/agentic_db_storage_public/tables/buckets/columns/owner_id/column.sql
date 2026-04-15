-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/column


ALTER TABLE agentic_db_storage_public.buckets 
  DROP COLUMN owner_id RESTRICT;


