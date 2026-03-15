-- Revert: schemas/agent_db_app_public/tables/sessions/columns/updated_at/alterations/alt0000001144


ALTER TABLE agent_db_app_public.sessions 
  ALTER COLUMN updated_at DROP NOT NULL;


