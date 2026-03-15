-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/constraints/event_images_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_images 
  DROP CONSTRAINT event_images_entity_id_fkey;


