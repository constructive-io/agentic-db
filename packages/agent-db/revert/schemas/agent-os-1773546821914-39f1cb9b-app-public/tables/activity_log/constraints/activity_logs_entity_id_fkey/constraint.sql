-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/constraints/activity_logs_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  DROP CONSTRAINT activity_logs_entity_id_fkey;


