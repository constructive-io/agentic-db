-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/owner_id/alterations/alt0000012886
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/owner_id/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN owner_id SET NOT NULL;

