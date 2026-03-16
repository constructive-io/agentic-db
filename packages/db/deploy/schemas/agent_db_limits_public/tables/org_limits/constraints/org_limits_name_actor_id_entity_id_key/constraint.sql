-- Deploy: schemas/agent_db_limits_public/tables/org_limits/constraints/org_limits_name_actor_id_entity_id_key/constraint
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE "agent_db_limits_public".org_limits 
  ADD CONSTRAINT org_limits_name_actor_id_entity_id_key 
    UNIQUE (name, actor_id, entity_id);

