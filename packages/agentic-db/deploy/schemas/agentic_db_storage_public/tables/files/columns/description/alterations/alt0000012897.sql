-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/description/alterations/alt0000012897
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/description/column


COMMENT ON COLUMN agentic_db_storage_public.files.description IS E'Human-readable description or alt text for the file (mutable)';

