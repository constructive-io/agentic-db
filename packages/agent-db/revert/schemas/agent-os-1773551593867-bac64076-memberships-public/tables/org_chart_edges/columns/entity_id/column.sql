-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/entity_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  DROP COLUMN entity_id RESTRICT;


