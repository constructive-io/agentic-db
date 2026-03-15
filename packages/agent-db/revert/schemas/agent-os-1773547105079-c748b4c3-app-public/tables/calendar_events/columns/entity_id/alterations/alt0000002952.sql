-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/calendar_events/columns/entity_id/alterations/alt0000002952


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".calendar_events 
  ALTER COLUMN entity_id DROP NOT NULL;


