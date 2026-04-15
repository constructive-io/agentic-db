-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/id/alterations/alt0000012878
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/id/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN id SET NOT NULL;

