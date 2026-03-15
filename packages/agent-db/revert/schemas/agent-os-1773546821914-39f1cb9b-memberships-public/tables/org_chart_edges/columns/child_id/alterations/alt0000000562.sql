-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000000562


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_parent_id_chk;


