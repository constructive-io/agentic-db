-- Revert: schemas/agent_db_app_public/tables/habits/columns/created_at/alterations/alt0000001497


ALTER TABLE agent_db_app_public.habits 
  ALTER COLUMN created_at DROP NOT NULL;


