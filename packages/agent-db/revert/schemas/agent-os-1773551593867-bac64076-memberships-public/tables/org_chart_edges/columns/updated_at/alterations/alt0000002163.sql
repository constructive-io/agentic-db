-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/updated_at/alterations/alt0000002163


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  ALTER COLUMN updated_at DROP DEFAULT;


