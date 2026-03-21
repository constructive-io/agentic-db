-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/column


ALTER TABLE "agentic_db_memberships_public".org_chart_edge_grants 
  DROP COLUMN entity_id RESTRICT;


