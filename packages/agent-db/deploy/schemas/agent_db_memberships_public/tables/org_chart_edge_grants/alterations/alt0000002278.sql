-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/alterations/alt0000002278
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/table


COMMENT ON TABLE "agent_db_memberships_public".org_chart_edge_grants IS E'Append-only log of hierarchy edge grants and revocations; triggers apply changes to the edges table';

