-- Revert: schemas/agent_db_app_public/tables/sessions/columns/id/alterations/alt0000001139


ALTER TABLE agent_db_app_public.sessions 
  ALTER COLUMN id DROP NOT NULL;


