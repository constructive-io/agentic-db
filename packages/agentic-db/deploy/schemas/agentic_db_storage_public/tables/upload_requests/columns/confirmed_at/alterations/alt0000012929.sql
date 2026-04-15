-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/confirmed_at/alterations/alt0000012929
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/confirmed_at/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.confirmed_at IS 'Timestamp when confirmUpload was called successfully';

