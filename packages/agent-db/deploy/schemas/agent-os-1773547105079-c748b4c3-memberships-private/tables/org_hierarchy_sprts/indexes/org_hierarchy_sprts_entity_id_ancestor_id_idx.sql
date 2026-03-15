-- Deploy: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/indexes/org_hierarchy_sprts_entity_id_ancestor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/entity_id/column
-- requires: schemas/agent-os-1773547105079-c748b4c3-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


CREATE INDEX org_hierarchy_sprts_entity_id_ancestor_id_idx ON "agent-os-1773547105079-c748b4c3-memberships-private".org_hierarchy_sprts USING BTREE ( entity_id, ancestor_id );

