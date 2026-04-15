-- Revert: schemas/agentic_db_storage_public/tables/buckets/constraints/buckets_pkey/constraint


ALTER TABLE agentic_db_storage_public.buckets 
  DROP CONSTRAINT buckets_pkey;


