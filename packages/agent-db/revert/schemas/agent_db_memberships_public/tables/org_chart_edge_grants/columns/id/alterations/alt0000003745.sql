-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/id/alterations/alt0000003745


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  ALTER COLUMN id DROP NOT NULL;


