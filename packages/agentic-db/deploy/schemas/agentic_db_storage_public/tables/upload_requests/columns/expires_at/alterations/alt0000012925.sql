-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/alterations/alt0000012925
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/expires_at/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.expires_at IS 'When the presigned URL expires';

