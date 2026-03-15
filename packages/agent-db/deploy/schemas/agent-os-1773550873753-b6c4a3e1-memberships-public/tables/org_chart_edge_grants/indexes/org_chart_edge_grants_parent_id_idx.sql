-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_parent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edge_grants/columns/parent_id/column


CREATE INDEX org_chart_edge_grants_parent_id_idx ON "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edge_grants USING BTREE ( parent_id );

