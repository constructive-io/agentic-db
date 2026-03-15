-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/contact_events/columns/entity_id/alterations/alt0000002583


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".contact_events 
  ALTER COLUMN entity_id DROP NOT NULL;


