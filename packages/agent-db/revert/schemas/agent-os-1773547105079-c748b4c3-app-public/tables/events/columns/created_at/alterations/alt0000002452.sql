-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/created_at/alterations/alt0000002452


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ALTER COLUMN created_at DROP NOT NULL;


