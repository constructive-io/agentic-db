-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/position_level/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  DROP COLUMN position_level RESTRICT;


