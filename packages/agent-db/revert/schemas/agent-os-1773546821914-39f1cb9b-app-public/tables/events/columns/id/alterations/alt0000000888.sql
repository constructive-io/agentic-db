-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/columns/id/alterations/alt0000000888


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  ALTER COLUMN id DROP NOT NULL;


