-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/size/alterations/alt0000012895
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/size/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN size SET NOT NULL;

