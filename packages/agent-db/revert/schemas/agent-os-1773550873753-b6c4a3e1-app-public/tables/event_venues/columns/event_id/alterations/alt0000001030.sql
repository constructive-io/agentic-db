-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/columns/event_id/alterations/alt0000001030


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_venues 
  ALTER COLUMN event_id DROP NOT NULL;


