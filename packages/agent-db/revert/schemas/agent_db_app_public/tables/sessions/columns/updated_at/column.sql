-- Revert: schemas/agent_db_app_public/tables/sessions/columns/updated_at/column


ALTER TABLE agent_db_app_public.sessions 
  DROP COLUMN updated_at RESTRICT;


