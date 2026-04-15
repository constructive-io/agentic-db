-- Deploy: schemas/agentic_db_storage_public/tables/buckets/constraints/buckets_owner_id_key_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ADD CONSTRAINT buckets_owner_id_key_key 
    UNIQUE (owner_id, key);

