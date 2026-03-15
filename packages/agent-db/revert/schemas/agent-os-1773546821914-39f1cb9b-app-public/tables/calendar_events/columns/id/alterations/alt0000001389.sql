-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/id/alterations/alt0000001389


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ALTER COLUMN id DROP NOT NULL;


