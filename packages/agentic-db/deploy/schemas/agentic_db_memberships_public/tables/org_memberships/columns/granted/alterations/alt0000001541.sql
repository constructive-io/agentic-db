-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/alterations/alt0000001541
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/granted/column


COMMENT ON COLUMN agentic_db_memberships_public.org_memberships.granted IS E'Bitmask of permissions directly granted to this member (not from profiles)';

