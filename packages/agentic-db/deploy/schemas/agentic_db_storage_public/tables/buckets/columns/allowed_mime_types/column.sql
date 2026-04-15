-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_mime_types/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.buckets 
  ADD COLUMN allowed_mime_types text[];

