-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000000572
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/depth/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts.depth IS E'Number of edges between ancestor and descendant (0 = self-reference)';

