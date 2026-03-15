-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/events/constraints/events_entity_id_fkey/constraint


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".events 
  DROP CONSTRAINT events_entity_id_fkey;


