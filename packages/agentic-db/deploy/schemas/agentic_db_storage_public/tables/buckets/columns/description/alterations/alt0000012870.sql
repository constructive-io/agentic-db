-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/description/alterations/alt0000012870
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/description/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.description IS E'Human-readable description of the bucket purpose';

