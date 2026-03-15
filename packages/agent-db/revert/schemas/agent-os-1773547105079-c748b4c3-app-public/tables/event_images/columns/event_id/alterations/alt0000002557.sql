-- Revert: schemas/agent-os-1773547105079-c748b4c3-app-public/tables/event_images/columns/event_id/alterations/alt0000002557


ALTER TABLE "agent-os-1773547105079-c748b4c3-app-public".event_images 
  ALTER COLUMN event_id DROP NOT NULL;


