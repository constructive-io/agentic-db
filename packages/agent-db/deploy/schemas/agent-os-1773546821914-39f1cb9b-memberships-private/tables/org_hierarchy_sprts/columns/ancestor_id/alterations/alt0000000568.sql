-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000000568
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts.ancestor_id IS E'User ID of the ancestor (manager) in the transitive path';

