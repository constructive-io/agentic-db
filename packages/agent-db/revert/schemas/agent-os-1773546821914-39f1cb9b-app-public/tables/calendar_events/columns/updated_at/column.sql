-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/updated_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  DROP COLUMN updated_at RESTRICT;


