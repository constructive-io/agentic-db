-- Revert: schemas/agent_db_app_public/tables/event_venues/constraints/event_venues_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".event_venues 
  DROP CONSTRAINT event_venues_entity_id_fkey;


