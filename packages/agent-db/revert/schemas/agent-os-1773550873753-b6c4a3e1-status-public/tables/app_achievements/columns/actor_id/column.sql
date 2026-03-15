-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_achievements/columns/actor_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_achievements 
  DROP COLUMN actor_id RESTRICT;


