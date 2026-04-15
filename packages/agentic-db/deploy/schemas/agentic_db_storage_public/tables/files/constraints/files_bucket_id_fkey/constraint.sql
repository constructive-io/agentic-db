-- Deploy: schemas/agentic_db_storage_public/tables/files/constraints/files_bucket_id_fkey/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/buckets/table


ALTER TABLE agentic_db_storage_public.files 
  ADD CONSTRAINT files_bucket_id_fkey 
    FOREIGN KEY(bucket_id) 
    REFERENCES agentic_db_storage_public.buckets (id) 
    ON DELETE RESTRICT;

