-- Revert: schemas/agent_db_app_public/tables/sessions/columns/status/column


ALTER TABLE agent_db_app_public.sessions 
  DROP COLUMN status RESTRICT;


