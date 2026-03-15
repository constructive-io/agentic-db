-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/policies/enable_row_level_security


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  DISABLE ROW LEVEL SECURITY;


