-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/child_id/alterations/alt0000003775


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ALTER COLUMN child_id DROP NOT NULL;


