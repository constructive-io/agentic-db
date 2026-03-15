-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000000562
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/table
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/child_id/column
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/columns/parent_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges 
  ADD CONSTRAINT org_chart_edges_child_id_parent_id_chk 
    CHECK (child_id <> parent_id);

