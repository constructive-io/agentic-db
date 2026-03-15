-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/columns/image_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_images 
  DROP COLUMN image_id RESTRICT;


