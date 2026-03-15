-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_id/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  DROP COLUMN actor_id RESTRICT;


