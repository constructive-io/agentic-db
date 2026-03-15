-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  DROP COLUMN created_at RESTRICT;


