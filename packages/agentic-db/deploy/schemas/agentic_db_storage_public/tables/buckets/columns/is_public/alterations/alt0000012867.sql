-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/alterations/alt0000012867
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN is_public SET NOT NULL;

