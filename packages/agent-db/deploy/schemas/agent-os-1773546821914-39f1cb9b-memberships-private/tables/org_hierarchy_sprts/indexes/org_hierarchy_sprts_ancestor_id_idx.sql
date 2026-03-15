-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/indexes/org_hierarchy_sprts_ancestor_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-private/tables/org_hierarchy_sprts/columns/ancestor_id/column


CREATE INDEX org_hierarchy_sprts_ancestor_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-private".org_hierarchy_sprts USING BTREE ( ancestor_id );

