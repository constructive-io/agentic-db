-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/contact_events/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".contact_events 
  DROP COLUMN id RESTRICT;


