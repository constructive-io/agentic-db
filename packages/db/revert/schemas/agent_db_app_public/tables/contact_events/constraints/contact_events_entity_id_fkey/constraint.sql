-- Revert: schemas/agent_db_app_public/tables/contact_events/constraints/contact_events_entity_id_fkey/constraint


ALTER TABLE "agent_db_app_public".contact_events 
  DROP CONSTRAINT contact_events_entity_id_fkey;


