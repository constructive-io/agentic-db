-- Revert: schemas/agent_db_app_public/tables/calendar_sync/columns/entity_id/column


ALTER TABLE agent_db_app_public.calendar_sync 
  DROP COLUMN entity_id RESTRICT;


