-- Deploy: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/constraints/org_limits_name_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/schema
-- requires: schemas/agent-os-1773547105079-c748b4c3-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773547105079-c748b4c3-limits-public".org_limits 
  ADD CONSTRAINT org_limits_name_actor_id_entity_id_key 
    UNIQUE (name, actor_id, entity_id);

