-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".org_achievements 
  DROP CONSTRAINT org_achievements_actor_id_name_entity_id_key;


