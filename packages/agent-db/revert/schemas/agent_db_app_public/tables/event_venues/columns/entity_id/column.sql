-- Revert: schemas/agent_db_app_public/tables/event_venues/columns/entity_id/column


ALTER TABLE agent_db_app_public.event_venues 
  DROP COLUMN entity_id RESTRICT;


