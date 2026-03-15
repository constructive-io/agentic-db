-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/entity_id/alterations/alt0000001293


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ALTER COLUMN entity_id DROP NOT NULL;


