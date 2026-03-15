-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/event_id/alterations/alt0000002570


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ALTER COLUMN event_id DROP NOT NULL;


