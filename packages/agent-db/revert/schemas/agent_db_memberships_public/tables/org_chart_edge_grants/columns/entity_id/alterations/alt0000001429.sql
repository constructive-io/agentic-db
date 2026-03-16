-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/columns/entity_id/alterations/alt0000001429


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  ALTER COLUMN entity_id DROP NOT NULL;


