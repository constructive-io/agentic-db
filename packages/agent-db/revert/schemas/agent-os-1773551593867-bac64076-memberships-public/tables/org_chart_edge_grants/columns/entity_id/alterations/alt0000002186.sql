-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000002186


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


