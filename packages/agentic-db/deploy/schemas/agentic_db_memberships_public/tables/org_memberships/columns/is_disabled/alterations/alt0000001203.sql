-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_disabled/alterations/alt0000001203
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_disabled/column


COMMENT ON COLUMN "agentic_db_memberships_public".org_memberships.is_disabled IS 'Whether this membership is temporarily disabled';

