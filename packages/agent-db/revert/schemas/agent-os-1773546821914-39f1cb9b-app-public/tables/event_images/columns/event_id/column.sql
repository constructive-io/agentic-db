-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_images/columns/event_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_images 
  DROP COLUMN event_id RESTRICT;


