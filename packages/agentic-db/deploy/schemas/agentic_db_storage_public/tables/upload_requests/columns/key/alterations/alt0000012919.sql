-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/key/alterations/alt0000012919
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/key/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.key IS 'S3 object key issued in the presigned URL';

