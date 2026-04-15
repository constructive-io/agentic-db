-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/alterations/alt0000012862


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN owner_id DROP NOT NULL;


