-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/grantor_id/alterations/alt0000002286


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  ALTER COLUMN grantor_id DROP NOT NULL;


