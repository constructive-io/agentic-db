-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/alterations/alt0000012884
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN bucket_id SET NOT NULL;

