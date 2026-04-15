-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/constraints/upload_requests_file_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


ALTER TABLE agentic_db_storage_public.upload_requests 
  ADD CONSTRAINT upload_requests_file_id_fkey 
    FOREIGN KEY(file_id) 
    REFERENCES agentic_db_storage_public.files (id) 
    ON DELETE CASCADE;

