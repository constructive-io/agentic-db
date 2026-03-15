-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/events/columns/id/alterations/alt0000000888


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".events 
  ALTER COLUMN id DROP NOT NULL;


