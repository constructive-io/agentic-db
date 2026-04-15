-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/id/alterations/alt0000012907
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/id/column



ALTER TABLE agentic_db_storage_public.upload_requests 
    ALTER COLUMN id SET DEFAULT uuidv7();

