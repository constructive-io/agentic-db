-- Deploy: schemas/agentic_db_storage_public/tables/files/constraints/files_bucket_id_key_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table


ALTER TABLE agentic_db_storage_public.files 
  ADD CONSTRAINT files_bucket_id_key_key 
    UNIQUE (bucket_id, key);

