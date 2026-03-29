-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/alterations/alt0000002886
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/column


COMMENT ON COLUMN agentic_db_memberships_public.org_memberships.is_banned IS 'Whether this member has been banned from the entity';

