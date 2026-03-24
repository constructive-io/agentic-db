-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/alterations/alt0000001898
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table


COMMENT ON TABLE agentic_db_memberships_public.org_chart_edge_grants IS E'Append-only log of hierarchy edge grants and revocations; triggers apply changes to the edges table';

