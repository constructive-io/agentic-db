-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/columns/entity_id/alterations/alt0000002259


ALTER TABLE "agent_db_memberships_public".org_chart_edges 
  ALTER COLUMN entity_id DROP NOT NULL;


