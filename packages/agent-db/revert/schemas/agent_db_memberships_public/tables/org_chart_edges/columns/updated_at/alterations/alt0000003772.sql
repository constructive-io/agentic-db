-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/updated_at/alterations/alt0000003772


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ALTER COLUMN updated_at DROP DEFAULT;


