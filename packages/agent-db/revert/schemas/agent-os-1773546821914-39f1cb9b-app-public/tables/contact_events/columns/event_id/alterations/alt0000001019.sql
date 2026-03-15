-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/columns/event_id/alterations/alt0000001019


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_events 
  ALTER COLUMN event_id DROP NOT NULL;


