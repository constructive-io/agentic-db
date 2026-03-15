-- Revert: schemas/agent_db_app_public/tables/reminders/columns/embedding/column


ALTER TABLE agent_db_app_public.reminders 
  DROP COLUMN embedding RESTRICT;


