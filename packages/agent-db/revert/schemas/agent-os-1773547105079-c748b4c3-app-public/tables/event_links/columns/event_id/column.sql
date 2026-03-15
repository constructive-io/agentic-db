-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/event_id/column


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  DROP COLUMN event_id RESTRICT;


