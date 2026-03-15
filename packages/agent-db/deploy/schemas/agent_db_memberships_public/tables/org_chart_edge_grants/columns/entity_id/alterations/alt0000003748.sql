-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000003748
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/column


COMMENT ON COLUMN "agent_db_memberships_public".org_chart_edge_grants.entity_id IS 'Organization this grant applies to';

