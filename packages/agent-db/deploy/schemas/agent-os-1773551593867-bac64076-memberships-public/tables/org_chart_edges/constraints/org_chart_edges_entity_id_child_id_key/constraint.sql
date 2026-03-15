-- Deploy: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/constraints/org_chart_edges_entity_id_child_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-memberships-public/tables/org_chart_edges/table


ALTER TABLE "agent-os-1773551593867-bac64076-memberships-public".org_chart_edges 
  ADD CONSTRAINT org_chart_edges_entity_id_child_id_key 
    UNIQUE (entity_id, child_id);

