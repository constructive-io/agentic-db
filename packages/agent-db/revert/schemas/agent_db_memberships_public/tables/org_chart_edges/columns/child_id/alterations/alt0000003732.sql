-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003732


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_parent_id_chk;


