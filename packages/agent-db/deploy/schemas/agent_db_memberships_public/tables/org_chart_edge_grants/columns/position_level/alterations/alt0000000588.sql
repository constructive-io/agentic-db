-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/position_level/alterations/alt0000000588
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/position_level/column


COMMENT ON COLUMN agent_db_memberships_public.org_chart_edge_grants.position_level IS 'Numeric seniority level being assigned in this grant';

