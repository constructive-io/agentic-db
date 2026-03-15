-- Revert: schemas/agent_db_app_public/tables/reminders/columns/title/column


ALTER TABLE agent_db_app_public.reminders 
  DROP COLUMN title RESTRICT;


