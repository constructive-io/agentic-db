-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-memberships-public/tables/org_chart_edge_grants/columns/grantor_id/alterations/alt0000000582


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-memberships-public".org_chart_edge_grants 
  ALTER COLUMN grantor_id DROP NOT NULL;


