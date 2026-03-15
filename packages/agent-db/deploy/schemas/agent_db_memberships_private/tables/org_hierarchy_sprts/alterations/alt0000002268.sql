-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/alterations/alt0000002268
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table


COMMENT ON TABLE "agent_db_memberships_private".org_hierarchy_sprts IS E'Transitive closure support table for fast ancestor/descendant lookups; rebuilt automatically by triggers';

