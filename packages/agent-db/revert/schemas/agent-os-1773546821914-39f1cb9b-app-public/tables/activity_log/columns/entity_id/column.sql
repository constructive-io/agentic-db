-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/entity_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  DROP COLUMN entity_id RESTRICT;


