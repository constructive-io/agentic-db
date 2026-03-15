-- Deploy: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/indexes/org_hierarchy_sprts_ancestor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_private/schema
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent_db_memberships_private/tables/org_hierarchy_sprts/columns/ancestor_id/column


CREATE INDEX org_hierarchy_sprts_ancestor_id_idx ON "agent_db_memberships_private".org_hierarchy_sprts USING BTREE ( ancestor_id );

