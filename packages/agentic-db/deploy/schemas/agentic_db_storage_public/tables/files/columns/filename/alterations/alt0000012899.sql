-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/filename/alterations/alt0000012899
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/filename/column


COMMENT ON COLUMN agentic_db_storage_public.files.filename IS E'Original filename provided by the uploader. Used for display and Content-Disposition header on download.';

