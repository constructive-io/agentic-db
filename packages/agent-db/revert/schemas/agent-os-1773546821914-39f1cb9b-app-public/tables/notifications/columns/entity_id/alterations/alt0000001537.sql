-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/notifications/columns/entity_id/alterations/alt0000001537


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".notifications 
  ALTER COLUMN entity_id DROP NOT NULL;


