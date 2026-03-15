-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_type/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  DROP COLUMN actor_type RESTRICT;


