-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
  ADD CONSTRAINT org_achievements_actor_id_name_entity_id_key 
    UNIQUE (actor_id, name, entity_id);

