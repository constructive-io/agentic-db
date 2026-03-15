-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/company_events/columns/event_id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".company_events 
  DROP COLUMN event_id RESTRICT;


