-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/updated_at/alterations/alt0000012859
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/updated_at/column


ALTER TABLE agentic_db_storage_public.buckets 
  ALTER COLUMN updated_at SET DEFAULT now();

