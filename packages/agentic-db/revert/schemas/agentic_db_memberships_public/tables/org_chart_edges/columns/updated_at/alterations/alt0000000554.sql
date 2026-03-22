-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edges/columns/updated_at/alterations/alt0000000554


ALTER TABLE "agentic_db_memberships_public".org_chart_edges 
  ALTER COLUMN updated_at DROP DEFAULT;


