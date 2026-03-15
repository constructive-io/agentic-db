-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/indexes/org_chart_edges_entity_id_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/entity_id/column


CREATE INDEX org_chart_edges_entity_id_idx ON "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges USING BTREE ( entity_id );

