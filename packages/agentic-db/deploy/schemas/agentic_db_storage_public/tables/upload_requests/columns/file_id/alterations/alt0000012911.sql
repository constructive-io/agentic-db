-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/file_id/alterations/alt0000012911
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/file_id/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.file_id IS 'The file record this upload request is for';

