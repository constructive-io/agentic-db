-- Revert: schemas/agent-os-1773546821914-39f1cb9b-memberships-public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_child_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-memberships-public".org_chart_edge_grants 
  DROP CONSTRAINT org_chart_edge_grants_child_id_fkey;


