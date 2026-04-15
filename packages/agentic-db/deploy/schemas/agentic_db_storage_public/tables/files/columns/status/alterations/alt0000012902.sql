-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/status/alterations/alt0000012902
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/status/column


COMMENT ON COLUMN agentic_db_storage_public.files.status IS E'Upload lifecycle status: pending (awaiting upload), ready (upload confirmed), processing (image resize), failed';

