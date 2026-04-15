-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/bucket_id/alterations/alt0000012915
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/bucket_id/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.bucket_id IS 'Target bucket for this upload request';

