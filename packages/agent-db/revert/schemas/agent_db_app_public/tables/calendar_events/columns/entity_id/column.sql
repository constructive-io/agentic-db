-- Revert: schemas/agent_db_app_public/tables/calendar_events/columns/entity_id/column


ALTER TABLE agent_db_app_public.calendar_events 
  DROP COLUMN entity_id RESTRICT;


