-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/position_level/alterations/alt0000001885
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/position_level/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edges.position_level IS E'Numeric seniority level for this position (higher = more senior)';

