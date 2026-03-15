-- Revert: schemas/agent_db_app_public/tables/events/columns/embedding_text/column


ALTER TABLE agent_db_app_public.events 
  DROP COLUMN embedding_text RESTRICT;


