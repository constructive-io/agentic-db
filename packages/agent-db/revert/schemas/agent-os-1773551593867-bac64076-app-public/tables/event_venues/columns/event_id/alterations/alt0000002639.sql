-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/columns/event_id/alterations/alt0000002639


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  ALTER COLUMN event_id DROP NOT NULL;


