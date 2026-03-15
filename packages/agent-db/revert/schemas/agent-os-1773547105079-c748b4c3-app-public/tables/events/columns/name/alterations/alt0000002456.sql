-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/events/columns/name/alterations/alt0000002456


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".events 
  ALTER COLUMN name DROP NOT NULL;


