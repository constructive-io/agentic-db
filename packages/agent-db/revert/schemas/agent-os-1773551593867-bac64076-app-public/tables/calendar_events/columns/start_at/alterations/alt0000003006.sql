-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/start_at/alterations/alt0000003006


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ALTER COLUMN start_at DROP NOT NULL;


