-- Revert: schemas/agentic_db_memberships_public/tables/org_chart_edge_grants/constraints/org_chart_edge_grants_entity_id_fkey/constraint


ALTER TABLE agentic_db_memberships_public.org_chart_edge_grants 
  DROP CONSTRAINT org_chart_edge_grants_entity_id_fkey;


