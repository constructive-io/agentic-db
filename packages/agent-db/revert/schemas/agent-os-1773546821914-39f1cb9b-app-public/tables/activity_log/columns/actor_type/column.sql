-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_type/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  DROP COLUMN actor_type RESTRICT;


