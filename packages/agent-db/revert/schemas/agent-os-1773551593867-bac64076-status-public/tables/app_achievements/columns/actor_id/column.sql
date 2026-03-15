-- Revert: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_achievements 
  DROP COLUMN actor_id RESTRICT;


