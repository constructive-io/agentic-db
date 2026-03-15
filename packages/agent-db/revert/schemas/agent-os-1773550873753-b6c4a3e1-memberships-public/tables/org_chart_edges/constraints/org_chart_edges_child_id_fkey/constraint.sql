-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edges/constraints/org_chart_edges_child_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_child_id_fkey;


