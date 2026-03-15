-- Revert: schemas/agent_db_app_public/tables/tasks/columns/title/alterations/alt0000001049


ALTER TABLE agent_db_app_public.tasks 
  ALTER COLUMN title DROP NOT NULL;


