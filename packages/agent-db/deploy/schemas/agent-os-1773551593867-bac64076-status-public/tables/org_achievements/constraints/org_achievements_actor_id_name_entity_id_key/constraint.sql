-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  ADD CONSTRAINT org_achievements_actor_id_name_entity_id_key 
    UNIQUE (actor_id, name, entity_id);

