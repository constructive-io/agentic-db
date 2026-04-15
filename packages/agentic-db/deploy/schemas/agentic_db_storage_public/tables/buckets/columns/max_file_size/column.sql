-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/max_file_size/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ADD COLUMN max_file_size bigint;

