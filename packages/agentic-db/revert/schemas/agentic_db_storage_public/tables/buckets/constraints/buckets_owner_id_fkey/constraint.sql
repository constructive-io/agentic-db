-- Revert: schemas/agentic_db_storage_public/tables/buckets/constraints/buckets_owner_id_fkey/constraint


ALTER TABLE agentic_db_storage_public.buckets 
  DROP CONSTRAINT buckets_owner_id_fkey;


