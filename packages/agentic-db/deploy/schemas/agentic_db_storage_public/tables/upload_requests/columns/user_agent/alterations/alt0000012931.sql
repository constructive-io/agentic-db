-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/user_agent/alterations/alt0000012931
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/user_agent/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.user_agent IS E'Client User-Agent string at time of presigned URL request';

