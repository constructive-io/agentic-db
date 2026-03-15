-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/columns/id/alterations/alt0000001032


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_venues 
  ALTER COLUMN id DROP NOT NULL;


