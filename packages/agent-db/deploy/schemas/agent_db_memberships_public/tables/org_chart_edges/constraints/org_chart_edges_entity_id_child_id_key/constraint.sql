-- Deploy: schemas/agent_db_memberships_public/tables/org_chart_edges/constraints/org_chart_edges_entity_id_child_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_memberships_public/schema
-- requires: schemas/agent_db_memberships_public/tables/org_chart_edges/table


ALTER TABLE agent_db_memberships_public.org_chart_edges 
  ADD CONSTRAINT org_chart_edges_entity_id_child_id_key 
    UNIQUE (entity_id, child_id);

