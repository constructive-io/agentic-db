-- Deploy: schemas/agentic_db_storage_public/tables/upload_requests/columns/owner_id/alterations/alt0000012917
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_storage_public/schema
-- requires: schemas/agentic_db_storage_public/tables/upload_requests/columns/owner_id/column


COMMENT ON COLUMN agentic_db_storage_public.upload_requests.owner_id IS E'Entity that owns this upload request. Inherited from bucket on INSERT for AuthzEntityMembership RLS.';

