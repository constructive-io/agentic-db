-- Deploy: schemas/agentic_db_storage_public/tables/files/columns/actor_id/alterations/alt0000012889
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/files/columns/actor_id/column


COMMENT ON COLUMN agentic_db_storage_public.files.actor_id IS E'User who uploaded this file. Forced to current_user_id() on INSERT. Used for UPDATE/DELETE authorization.';

