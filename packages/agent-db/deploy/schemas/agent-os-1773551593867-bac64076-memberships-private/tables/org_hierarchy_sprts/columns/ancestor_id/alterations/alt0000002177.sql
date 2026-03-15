-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000002177
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-private".org_hierarchy_sprts.ancestor_id IS E'User ID of the ancestor (manager) in the transitive path';

