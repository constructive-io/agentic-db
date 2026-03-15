-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/alterations/alt0000003761
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edge_grants.created_at IS 'Timestamp when this grant or revocation was recorded';

