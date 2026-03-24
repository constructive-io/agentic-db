-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/grants/authenticated/select/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table


GRANT SELECT ON agentic_db_memberships_public.org_chart_edge_grants TO authenticated;

