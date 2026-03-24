-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/alterations/alt0000001914
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/created_at/column


COMMENT ON COLUMN agentic_db_memberships_public.org_chart_edge_grants.created_at IS 'Timestamp when this grant or revocation was recorded';

