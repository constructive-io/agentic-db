-- Deploy: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003394
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/column
-- requires: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  ADD CONSTRAINT org_chart_edges_child_id_parent_id_chk 
    CHECK (child_id <> parent_id);

