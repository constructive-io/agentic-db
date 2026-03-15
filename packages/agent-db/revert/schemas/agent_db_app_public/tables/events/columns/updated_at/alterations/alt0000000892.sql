-- Revert: schemas/agent_db_app_public/tables/events/columns/updated_at/alterations/alt0000000892


ALTER TABLE agent_db_app_public.events 
  ALTER COLUMN updated_at DROP NOT NULL;


