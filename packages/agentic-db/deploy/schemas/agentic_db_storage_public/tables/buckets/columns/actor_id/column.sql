-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ADD COLUMN actor_id uuid;

