-- Revert: schemas/agent_db_app_public/tables/processes/columns/created_at/alterations/alt0000001195


ALTER TABLE agent_db_app_public.processes 
  ALTER COLUMN created_at DROP NOT NULL;


