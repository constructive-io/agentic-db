-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/position_level/alterations/alt0000000561
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/position_level/column


COMMENT ON COLUMN "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges.position_level IS E'Numeric seniority level for this position (higher = more senior)';

