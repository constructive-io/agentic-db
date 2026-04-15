-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/key/alterations/alt0000012861
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/key/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.key IS E'Unique bucket identifier used in S3 key paths (e.g. avatars, documents, temp)';

