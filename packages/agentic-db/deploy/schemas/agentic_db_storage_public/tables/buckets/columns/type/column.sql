-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/type/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ADD COLUMN type text;

