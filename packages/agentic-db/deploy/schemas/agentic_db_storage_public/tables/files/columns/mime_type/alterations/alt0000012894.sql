-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/mime_type/alterations/alt0000012894
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/mime_type/column


COMMENT ON COLUMN agentic_db_storage_public.files.mime_type IS E'MIME type of the file (e.g. image/png, application/pdf). Immutable after INSERT.';

