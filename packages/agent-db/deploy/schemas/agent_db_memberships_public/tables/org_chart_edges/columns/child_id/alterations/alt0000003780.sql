-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003780
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/column
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/parent_id/column


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ADD CONSTRAINT org_chart_edges_child_id_parent_id_chk 
    CHECK (child_id <> parent_id);

