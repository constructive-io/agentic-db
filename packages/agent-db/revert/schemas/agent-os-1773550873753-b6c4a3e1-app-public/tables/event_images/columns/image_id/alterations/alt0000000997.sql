-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/columns/image_id/alterations/alt0000000997


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_images 
  ALTER COLUMN image_id DROP NOT NULL;


