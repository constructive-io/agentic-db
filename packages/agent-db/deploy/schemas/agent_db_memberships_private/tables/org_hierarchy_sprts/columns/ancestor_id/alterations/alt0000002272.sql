-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/alterations/alt0000002272
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


COMMENT ON COLUMN "agent_db_memberships_private".org_hierarchy_sprts.ancestor_id IS E'User ID of the ancestor (manager) in the transitive path';

