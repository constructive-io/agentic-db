-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/constraints/app_achievements_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  DROP CONSTRAINT app_achievements_actor_id_fkey;


