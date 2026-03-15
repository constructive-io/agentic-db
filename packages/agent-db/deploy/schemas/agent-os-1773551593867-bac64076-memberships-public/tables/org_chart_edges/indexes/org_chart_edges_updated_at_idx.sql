-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/indexes/org_chart_edges_updated_at_idx
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/updated_at/column


CREATE INDEX org_chart_edges_updated_at_idx ON "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges ( updated_at );

