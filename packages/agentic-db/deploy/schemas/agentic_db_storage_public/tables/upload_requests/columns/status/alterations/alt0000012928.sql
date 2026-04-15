-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/status/alterations/alt0000012928
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/status/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.status IS E'Upload request lifecycle: issued (URL generated), used (confirmed), expired (timed out), rejected (validation failed)';

