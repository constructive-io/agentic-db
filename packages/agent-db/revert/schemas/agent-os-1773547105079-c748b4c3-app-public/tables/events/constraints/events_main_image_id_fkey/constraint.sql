-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/constraints/events_main_image_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  DROP CONSTRAINT events_main_image_id_fkey;


