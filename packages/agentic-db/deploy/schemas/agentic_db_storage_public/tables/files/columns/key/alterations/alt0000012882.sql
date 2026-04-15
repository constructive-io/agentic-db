-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/key/alterations/alt0000012882
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/key/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN key SET NOT NULL;

