-- Revert: schemas/agent_db_app_public/tables/inbound_events/constraints/inbound_events_entity_id_fkey/constraint


ALTER TABLE agent_db_app_public.inbound_events 
  DROP CONSTRAINT inbound_events_entity_id_fkey;


