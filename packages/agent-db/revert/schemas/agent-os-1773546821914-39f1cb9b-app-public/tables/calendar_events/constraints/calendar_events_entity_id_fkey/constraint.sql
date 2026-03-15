-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/calendar_events/constraints/calendar_events_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".calendar_events 
  DROP CONSTRAINT calendar_events_entity_id_fkey;


