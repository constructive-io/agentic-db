-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/alterations/alt0000012885
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/bucket_id/column


COMMENT ON COLUMN agentic_db_storage_public.files.bucket_id IS E'Bucket this file belongs to. Determines owner_id and is_public via inheritance trigger.';

