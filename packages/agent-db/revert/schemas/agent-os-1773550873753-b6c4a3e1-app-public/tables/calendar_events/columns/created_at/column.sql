-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/created_at/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_events 
  DROP COLUMN created_at RESTRICT;


