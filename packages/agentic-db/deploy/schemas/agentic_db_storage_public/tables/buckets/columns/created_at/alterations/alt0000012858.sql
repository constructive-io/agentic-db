-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/created_at/alterations/alt0000012858
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/created_at/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN created_at SET DEFAULT now();

