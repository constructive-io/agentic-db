-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000002171


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_parent_id_chk;


