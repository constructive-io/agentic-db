-- Revert: schemas/agent-os-1773547105079-c748b4c3-memberships-public/tables/org_chart_edges/constraints/org_chart_edges_entity_id_child_id_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-memberships-public".org_chart_edges 
  DROP CONSTRAINT org_chart_edges_entity_id_child_id_key;


