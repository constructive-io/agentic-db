-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".events 
  DROP CONSTRAINT events_main_image_id_fkey;


