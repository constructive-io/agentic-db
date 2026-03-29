-- Deploy: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_owner/alterations/alt0000009602
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_memberships/columns/is_owner/column


COMMENT ON COLUMN agentic_db_memberships_public.app_memberships.is_owner IS 'Whether the actor is the owner of this entity';

