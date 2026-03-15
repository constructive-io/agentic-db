-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_grantor_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  DROP CONSTRAINT org_chart_edge_grants_grantor_id_fkey;


