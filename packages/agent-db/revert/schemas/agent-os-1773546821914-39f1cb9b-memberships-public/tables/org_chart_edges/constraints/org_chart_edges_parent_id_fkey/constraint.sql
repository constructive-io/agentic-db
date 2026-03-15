-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edges/constraints/org_chart_edges_parent_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_parent_id_fkey;


