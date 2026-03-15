-- Revert: schemas/agent_db_app_public/tables/events/columns/tags/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN tags RESTRICT;


