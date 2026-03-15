-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/event_venues/constraints/event_venues_event_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".event_venues 
  DROP CONSTRAINT event_venues_event_id_fkey;


