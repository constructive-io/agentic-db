-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/id/alterations/alt0000012856


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN id DROP NOT NULL;


