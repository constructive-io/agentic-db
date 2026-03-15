-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/start_at/alterations/alt0000001397


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ALTER COLUMN start_at DROP NOT NULL;


