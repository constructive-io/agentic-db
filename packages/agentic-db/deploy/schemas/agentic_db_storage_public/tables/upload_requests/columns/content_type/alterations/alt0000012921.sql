-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_type/alterations/alt0000012921
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/content_type/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.content_type IS 'MIME type claimed by the client at request time';

