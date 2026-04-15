-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/key/alterations/alt0000012883
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/key/column


COMMENT ON COLUMN agentic_db_storage_public.files.key IS E'S3 object key for this file, unique within its bucket';

