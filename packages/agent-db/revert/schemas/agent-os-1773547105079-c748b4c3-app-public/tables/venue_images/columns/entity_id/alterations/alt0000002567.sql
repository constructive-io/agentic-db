-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/columns/entity_id/alterations/alt0000002567


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_images 
  ALTER COLUMN entity_id DROP NOT NULL;


