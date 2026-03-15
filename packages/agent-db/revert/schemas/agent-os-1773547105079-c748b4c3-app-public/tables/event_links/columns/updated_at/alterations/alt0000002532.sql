-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_links/columns/updated_at/alterations/alt0000002532


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_links 
  ALTER COLUMN updated_at DROP NOT NULL;


