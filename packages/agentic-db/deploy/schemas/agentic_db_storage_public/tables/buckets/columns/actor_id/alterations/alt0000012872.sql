-- Deploy: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/alterations/alt0000012872
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/buckets/columns/actor_id/column


COMMENT ON COLUMN agentic_db_storage_public.buckets.actor_id IS E'User who created this bucket. Forced to current_user_id() on INSERT.';

