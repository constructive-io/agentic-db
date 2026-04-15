-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/type/alterations/alt0000012865
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/type/column



ALTER TABLE agentic_db_storage_public.buckets 
    ALTER COLUMN type SET DEFAULT 'private';

