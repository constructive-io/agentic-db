-- Revert: schemas/agent_db_memberships_public/tables/org_chart_edges/constraints/org_chart_edges_entity_id_child_id_key/constraint


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  DROP CONSTRAINT org_chart_edges_entity_id_child_id_key;


