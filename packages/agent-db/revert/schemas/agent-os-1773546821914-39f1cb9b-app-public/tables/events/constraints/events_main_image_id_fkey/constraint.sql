-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  DROP CONSTRAINT events_main_image_id_fkey;


