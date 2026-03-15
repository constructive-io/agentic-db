-- Revert: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/columns/child_id/alterations/alt0000002166


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  ALTER COLUMN child_id DROP NOT NULL;


