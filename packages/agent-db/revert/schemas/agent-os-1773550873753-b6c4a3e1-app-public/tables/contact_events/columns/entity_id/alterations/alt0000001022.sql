-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-app-public/tables/contact_events/columns/entity_id/alterations/alt0000001022


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-app-public".contact_events 
  ALTER COLUMN entity_id DROP NOT NULL;


