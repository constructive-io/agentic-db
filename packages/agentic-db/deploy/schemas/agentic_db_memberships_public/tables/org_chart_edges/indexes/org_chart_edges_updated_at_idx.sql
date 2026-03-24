-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/indexes/org_chart_edges_updated_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/updated_at/column


CREATE INDEX org_chart_edges_updated_at_idx ON agentic_db_memberships_public.org_chart_edges ( updated_at );

