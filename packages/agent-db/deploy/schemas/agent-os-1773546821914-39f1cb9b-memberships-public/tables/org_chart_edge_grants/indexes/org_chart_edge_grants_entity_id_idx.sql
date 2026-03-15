-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/indexes/org_chart_edge_grants_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/columns/entity_id/column


CREATE INDEX org_chart_edge_grants_entity_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants USING BTREE ( entity_id );

