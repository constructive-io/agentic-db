-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/company_events/columns/event_id/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".company_events 
  DROP COLUMN event_id RESTRICT;


