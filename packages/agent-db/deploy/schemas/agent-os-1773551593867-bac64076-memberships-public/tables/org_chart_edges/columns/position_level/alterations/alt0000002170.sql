-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/position_level/alterations/alt0000002170
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/position_level/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges.position_level IS E'Numeric seniority level for this position (higher = more senior)';

