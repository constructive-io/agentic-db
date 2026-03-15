-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edge_grants/columns/child_id/alterations/alt0000000579


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edge_grants 
  ALTER COLUMN child_id DROP NOT NULL;


