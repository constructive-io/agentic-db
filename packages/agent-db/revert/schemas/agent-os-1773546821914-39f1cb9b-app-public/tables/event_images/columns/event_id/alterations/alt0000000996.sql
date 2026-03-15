-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/event_id/alterations/alt0000000996


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
  ALTER COLUMN event_id DROP NOT NULL;


