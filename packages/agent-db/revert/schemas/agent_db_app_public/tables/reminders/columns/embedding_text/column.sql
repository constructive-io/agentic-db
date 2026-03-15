-- Revert: schemas/agent_db_app_public/tables/reminders/columns/embedding_text/column


ALTER TABLE agent_db_app_public.reminders 
  DROP COLUMN embedding_text RESTRICT;


