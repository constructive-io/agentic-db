-- Revert: schemas/agent_db_app_public/tables/events/constraints/events_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".events 
  DROP CONSTRAINT events_entity_id_fkey;


