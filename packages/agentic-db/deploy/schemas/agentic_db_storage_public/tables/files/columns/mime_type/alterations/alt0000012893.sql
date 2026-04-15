-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/mime_type/alterations/alt0000012893
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/table
-- requires: schemas/agentic_db_storage_public/tables/files/columns/mime_type/column


ALTER TABLE agentic_db_storage_public.files 
  ALTER COLUMN mime_type SET NOT NULL;

