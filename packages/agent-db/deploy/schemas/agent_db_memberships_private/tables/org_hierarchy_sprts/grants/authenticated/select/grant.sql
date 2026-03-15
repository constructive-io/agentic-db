-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/grants/authenticated/select/grant
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table


GRANT SELECT ON agent_db_memberships_private.org_hierarchy_sprts TO authenticated;

