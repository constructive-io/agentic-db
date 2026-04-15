-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/alterations/alt0000012905
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/table


COMMENT ON TABLE agentic_db_storage_public.upload_requests IS E'Tracks presigned URL requests for audit, rate limiting, abuse detection, and cleanup of abandoned uploads';

