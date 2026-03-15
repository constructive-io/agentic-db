-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/columns/image_id/alterations/alt0000002564


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_images 
  ALTER COLUMN image_id DROP NOT NULL;


