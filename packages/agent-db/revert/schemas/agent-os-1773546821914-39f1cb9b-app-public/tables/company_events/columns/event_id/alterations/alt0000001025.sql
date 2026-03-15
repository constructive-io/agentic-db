-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/event_id/alterations/alt0000001025


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  ALTER COLUMN event_id DROP NOT NULL;


