-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/indexes/org_chart_edges_parent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/parent_id/column


CREATE INDEX org_chart_edges_parent_id_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges USING BTREE ( parent_id );

