-- Revert: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/constraints/app_achievements_actor_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  DROP CONSTRAINT app_achievements_actor_id_fkey;


