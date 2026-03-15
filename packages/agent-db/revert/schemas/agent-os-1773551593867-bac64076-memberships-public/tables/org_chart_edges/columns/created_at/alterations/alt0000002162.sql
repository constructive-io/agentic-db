-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/created_at/alterations/alt0000002162


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  ALTER COLUMN created_at DROP DEFAULT;


