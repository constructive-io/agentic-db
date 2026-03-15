-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/event_venues/constraints/event_venues_event_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".event_venues 
  DROP CONSTRAINT event_venues_event_id_fkey;


