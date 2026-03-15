-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/indexes/org_hierarchy_sprts_descendant_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-private/tables/org_hierarchy_sprts/columns/descendant_id/column


CREATE INDEX org_hierarchy_sprts_descendant_id_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-private".org_hierarchy_sprts USING BTREE ( descendant_id );

