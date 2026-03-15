-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/calendar_events/columns/updated_at/alterations/alt0000001394


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".calendar_events 
  ALTER COLUMN updated_at DROP NOT NULL;


