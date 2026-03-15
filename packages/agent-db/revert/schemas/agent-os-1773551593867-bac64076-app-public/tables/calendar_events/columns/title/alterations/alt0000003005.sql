-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/calendar_events/columns/title/alterations/alt0000003005


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".calendar_events 
  ALTER COLUMN title DROP NOT NULL;


