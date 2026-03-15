-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/alterations/alt0000002183
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/table


COMMENT ON TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants IS E'Append-only log of hierarchy edge grants and revocations; triggers apply changes to the edges table';

