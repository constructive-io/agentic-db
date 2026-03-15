-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  DROP CONSTRAINT events_main_image_id_fkey;


