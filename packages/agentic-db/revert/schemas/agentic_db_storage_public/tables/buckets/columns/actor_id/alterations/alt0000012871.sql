-- Revert: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/alterations/alt0000012871


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN actor_id DROP NOT NULL;


