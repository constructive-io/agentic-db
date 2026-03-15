-- Revert: schemas/agent_db_app_public/tables/events/columns/ended_at/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN ended_at RESTRICT;


