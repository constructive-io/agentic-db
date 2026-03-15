-- Revert: schemas/agent_db_app_public/tables/sessions/columns/id/column


ALTER TABLE agent_db_app_public.sessions 
  DROP COLUMN id RESTRICT;


