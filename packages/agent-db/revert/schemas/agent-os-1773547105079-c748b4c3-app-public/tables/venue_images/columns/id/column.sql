-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/venue_images/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".venue_images 
  DROP COLUMN id RESTRICT;


