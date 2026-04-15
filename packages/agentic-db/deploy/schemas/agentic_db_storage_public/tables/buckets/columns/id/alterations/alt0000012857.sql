-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/id/alterations/alt0000012857
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/id/column



ALTER TABLE agentic_db_storage_public.buckets 
    ALTER COLUMN id SET DEFAULT uuidv7();

