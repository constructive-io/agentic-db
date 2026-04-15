-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/size/alterations/alt0000012896
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/size/column


COMMENT ON COLUMN agentic_db_storage_public.files.size IS E'File size in bytes. Immutable after INSERT.';

