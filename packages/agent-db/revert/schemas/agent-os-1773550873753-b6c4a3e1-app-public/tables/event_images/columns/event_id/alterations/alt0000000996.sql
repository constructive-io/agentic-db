-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/columns/event_id/alterations/alt0000000996


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_images 
  ALTER COLUMN event_id DROP NOT NULL;


