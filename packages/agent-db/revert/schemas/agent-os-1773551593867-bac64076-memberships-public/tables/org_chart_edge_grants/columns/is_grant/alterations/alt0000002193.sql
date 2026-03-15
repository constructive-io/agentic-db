-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edge_grants/columns/is_grant/alterations/alt0000002193


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edge_grants 
  ALTER COLUMN is_grant DROP NOT NULL;


