-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_parent_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/parent_id/column


CREATE INDEX org_chart_edge_grants_parent_id_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants USING BTREE ( parent_id );

