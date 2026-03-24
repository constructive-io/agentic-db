-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000001903
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/column


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  ALTER COLUMN child_id SET NOT NULL;

