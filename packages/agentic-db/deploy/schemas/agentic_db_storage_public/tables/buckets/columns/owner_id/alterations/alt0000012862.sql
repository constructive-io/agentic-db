-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/alterations/alt0000012862
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN owner_id SET NOT NULL;

