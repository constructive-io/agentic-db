-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/constraints/org_limits_name_actor_id_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/org_limits/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".org_limits 
  ADD CONSTRAINT org_limits_name_actor_id_entity_id_key 
    UNIQUE (name, actor_id, entity_id);

