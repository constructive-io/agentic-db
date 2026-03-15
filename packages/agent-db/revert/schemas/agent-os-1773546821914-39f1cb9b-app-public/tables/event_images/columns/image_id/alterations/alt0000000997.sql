-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/image_id/alterations/alt0000000997


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
  ALTER COLUMN image_id DROP NOT NULL;


