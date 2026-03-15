-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/columns/id/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  DROP COLUMN id RESTRICT;


