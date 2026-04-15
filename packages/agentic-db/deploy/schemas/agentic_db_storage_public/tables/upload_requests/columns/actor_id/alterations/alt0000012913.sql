-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/actor_id/alterations/alt0000012913
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/actor_id/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.actor_id IS E'User who requested the presigned URL. Forced to current_user_id() on INSERT.';

