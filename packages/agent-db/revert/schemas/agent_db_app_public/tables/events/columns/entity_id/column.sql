-- Revert: schemas/agent_db_app_public/tables/events/columns/entity_id/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN entity_id RESTRICT;


