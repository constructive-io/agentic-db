-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/entity_id/alterations/alt0000002643


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  ALTER COLUMN entity_id DROP NOT NULL;


