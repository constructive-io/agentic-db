-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/updated_at/alterations/alt0000002454


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ALTER COLUMN updated_at DROP NOT NULL;


