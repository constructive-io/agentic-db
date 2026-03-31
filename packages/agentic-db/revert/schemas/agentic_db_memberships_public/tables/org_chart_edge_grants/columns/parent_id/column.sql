-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/parent_id/column


ALTER TABLE "agentic_db_memberships_public".org_chart_edge_grants 
  DROP COLUMN parent_id RESTRICT;


