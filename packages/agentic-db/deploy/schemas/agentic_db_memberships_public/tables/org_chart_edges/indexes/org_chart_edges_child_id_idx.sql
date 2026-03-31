-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/indexes/org_chart_edges_child_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/column


CREATE INDEX org_chart_edges_child_id_idx ON agentic_db_memberships_public.org_chart_edges USING BTREE ( child_id );

