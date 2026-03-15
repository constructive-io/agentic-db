-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_achievements/constraints/org_achievements_actor_id_name_entity_id_key/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_achievements 
  DROP CONSTRAINT org_achievements_actor_id_name_entity_id_key;


