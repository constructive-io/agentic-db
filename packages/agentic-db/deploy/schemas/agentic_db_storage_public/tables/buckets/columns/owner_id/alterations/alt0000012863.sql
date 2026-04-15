-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/alterations/alt0000012863
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/owner_id/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.owner_id IS E'Entity that owns this bucket. Determines RLS visibility via entity membership.';

