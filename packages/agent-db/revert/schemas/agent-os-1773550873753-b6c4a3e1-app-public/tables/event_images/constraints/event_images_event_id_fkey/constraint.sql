-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_images/constraints/event_images_event_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_images 
  DROP CONSTRAINT event_images_event_id_fkey;


