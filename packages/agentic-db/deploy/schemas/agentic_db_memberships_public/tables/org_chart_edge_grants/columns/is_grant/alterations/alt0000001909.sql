-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000001909
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/is_grant/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edge_grants.is_grant IS E'TRUE to add/update the edge, FALSE to remove it';

