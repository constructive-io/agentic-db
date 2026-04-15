-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/owner_id/alterations/alt0000012887
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/owner_id/column


COMMENT ON COLUMN agentic_db_storage_public.files.owner_id IS E'Entity that owns this file. Inherited from bucket on INSERT, immutable after.';

