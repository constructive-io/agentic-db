-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000002276
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/depth/column


COMMENT ON COLUMN "agent_db_memberships_private".org_hierarchy_sprts.depth IS E'Number of edges between ancestor and descendant (0 = self-reference)';

