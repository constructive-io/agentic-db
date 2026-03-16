-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_parent_id_fkey/constraint


ALTER TABLE "agent_db_memberships_public".org_chart_edge_grants 
  DROP CONSTRAINT org_chart_edge_grants_parent_id_fkey;


