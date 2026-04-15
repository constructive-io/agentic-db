-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/ip_address/alterations/alt0000012930
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/ip_address/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.ip_address IS 'Client IP address at time of presigned URL request';

