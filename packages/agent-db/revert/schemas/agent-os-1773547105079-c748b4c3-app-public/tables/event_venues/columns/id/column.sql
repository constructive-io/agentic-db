-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_venues/columns/id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_venues 
  DROP COLUMN id RESTRICT;


