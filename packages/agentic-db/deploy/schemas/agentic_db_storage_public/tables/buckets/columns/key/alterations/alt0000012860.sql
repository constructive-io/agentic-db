-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/key/alterations/alt0000012860
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/key/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN key SET NOT NULL;

