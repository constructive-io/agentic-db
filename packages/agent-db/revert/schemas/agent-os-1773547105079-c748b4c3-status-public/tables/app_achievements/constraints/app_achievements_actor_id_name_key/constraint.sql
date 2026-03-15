-- Revert: schemas/agent-os-1773547105079-c748b4c3-status-public/tables/app_achievements/constraints/app_achievements_actor_id_name_key/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-status-public".app_achievements 
  DROP CONSTRAINT app_achievements_actor_id_name_key;


