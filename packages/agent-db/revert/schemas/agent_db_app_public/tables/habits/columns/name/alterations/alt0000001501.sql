-- Revert: schemas/agent_db_app_public/tables/habits/columns/name/alterations/alt0000001501


ALTER TABLE agent_db_app_public.habits 
  ALTER COLUMN name DROP NOT NULL;


