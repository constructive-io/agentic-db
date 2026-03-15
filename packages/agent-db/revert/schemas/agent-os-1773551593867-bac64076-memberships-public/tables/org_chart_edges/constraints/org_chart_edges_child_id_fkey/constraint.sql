-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/constraints/org_chart_edges_child_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_fkey;


