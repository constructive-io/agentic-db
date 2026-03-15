-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/parent_id/alterations/alt0000002190
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/parent_id/column


COMMENT ON COLUMN "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants.parent_id IS E'User ID of the manager being assigned; NULL for top-level positions';

