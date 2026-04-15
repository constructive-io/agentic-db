-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/alterations/alt0000012871
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN actor_id SET NOT NULL;

