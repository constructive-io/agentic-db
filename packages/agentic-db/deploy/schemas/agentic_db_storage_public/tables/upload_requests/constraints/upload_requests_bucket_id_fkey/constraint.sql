-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/constraints/upload_requests_bucket_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/table
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


ALTER TABLE agentic_db_storage_public.upload_requests 
  ADD CONSTRAINT upload_requests_bucket_id_fkey 
    FOREIGN KEY(bucket_id) 
    REFERENCES agentic_db_storage_public.buckets (id) 
    ON DELETE RESTRICT;

