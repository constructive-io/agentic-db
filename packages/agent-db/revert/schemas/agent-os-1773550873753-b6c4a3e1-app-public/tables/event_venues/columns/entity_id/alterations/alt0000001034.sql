-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/event_venues/columns/entity_id/alterations/alt0000001034


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".event_venues 
  ALTER COLUMN entity_id DROP NOT NULL;


