-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/grantor_id/alterations/alt0000002192
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/grantor_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants.grantor_id IS 'User ID of the admin who performed this grant or revocation';

