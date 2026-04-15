-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/type/alterations/alt0000012866
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/type/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.type IS E'Bucket CDN access type: public (CDN-served), private (presigned GET), temp (staging uploads)';

