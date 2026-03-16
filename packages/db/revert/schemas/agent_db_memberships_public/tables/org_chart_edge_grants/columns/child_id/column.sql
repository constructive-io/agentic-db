-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/child_id/column


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  DROP COLUMN child_id RESTRICT;


