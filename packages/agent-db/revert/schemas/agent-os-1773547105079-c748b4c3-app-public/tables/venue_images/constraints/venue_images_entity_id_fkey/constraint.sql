-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/constraints/venue_images_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_images 
  DROP CONSTRAINT venue_images_entity_id_fkey;


