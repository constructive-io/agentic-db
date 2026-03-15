-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/title/alterations/alt0000001396


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  ALTER COLUMN title DROP NOT NULL;


