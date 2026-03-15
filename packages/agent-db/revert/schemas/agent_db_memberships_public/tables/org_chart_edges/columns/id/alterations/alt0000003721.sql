-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/id/alterations/alt0000003721


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ALTER COLUMN id DROP NOT NULL;


