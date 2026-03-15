-- Deploy: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/alterations/alt0000002064
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_memberships/columns/is_active/column


COMMENT ON COLUMN "agent_db_memberships_public".org_memberships.is_active IS E'Computed field indicating the membership is approved, verified, not banned, and not disabled';

