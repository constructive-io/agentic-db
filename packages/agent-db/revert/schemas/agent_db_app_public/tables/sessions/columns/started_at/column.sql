-- Revert: schemas/agent_db_app_public/tables/sessions/columns/started_at/column


ALTER TABLE agent_db_app_public.sessions 
  DROP COLUMN started_at RESTRICT;


