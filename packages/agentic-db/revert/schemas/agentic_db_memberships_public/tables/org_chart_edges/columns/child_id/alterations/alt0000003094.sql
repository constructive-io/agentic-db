-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003094


ALTER TABLE agentic_db_memberships_public.org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_parent_id_chk;


