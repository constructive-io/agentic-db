-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/alterations/alt0000012869
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/is_public/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.is_public IS E'Whether bucket contents are publicly readable. Set to true when type is public.';

