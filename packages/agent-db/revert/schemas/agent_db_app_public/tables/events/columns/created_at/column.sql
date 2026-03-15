-- Revert: schemas/agent_db_app_public/tables/events/columns/created_at/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN created_at RESTRICT;


