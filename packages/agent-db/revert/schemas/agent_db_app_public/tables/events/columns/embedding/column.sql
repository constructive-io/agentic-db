-- Revert: schemas/agent_db_app_public/tables/events/columns/embedding/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN embedding RESTRICT;


