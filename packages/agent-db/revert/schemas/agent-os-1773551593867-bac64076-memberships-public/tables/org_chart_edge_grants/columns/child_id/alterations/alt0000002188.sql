-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000002188


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  ALTER COLUMN child_id DROP NOT NULL;


