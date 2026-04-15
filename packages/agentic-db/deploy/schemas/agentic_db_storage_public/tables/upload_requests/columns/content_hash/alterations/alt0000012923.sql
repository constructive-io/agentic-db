-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/alterations/alt0000012923
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_hash/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.content_hash IS E'SHA-256 hex digest of file content, provided by client';

