-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/alterations/alt0000002076
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_owner/column


COMMENT ON COLUMN agentic_db_memberships_public.org_memberships.is_owner IS 'Whether the actor is the owner of this entity';

