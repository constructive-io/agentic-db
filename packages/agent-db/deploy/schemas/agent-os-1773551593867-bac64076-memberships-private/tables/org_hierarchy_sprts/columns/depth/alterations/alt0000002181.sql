-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/depth/alterations/alt0000002181
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/depth/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-private".org_hierarchy_sprts.depth IS E'Number of edges between ancestor and descendant (0 = self-reference)';

