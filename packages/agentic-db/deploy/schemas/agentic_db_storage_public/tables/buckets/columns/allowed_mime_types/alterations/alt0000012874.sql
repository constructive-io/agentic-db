-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_mime_types/alterations/alt0000012874
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/allowed_mime_types/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.allowed_mime_types IS E'Whitelist of allowed MIME types for files in this bucket (NULL = all allowed, enforcement deferred)';

