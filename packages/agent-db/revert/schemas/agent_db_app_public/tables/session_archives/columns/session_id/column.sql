-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/session_id/column


ALTER TABLE agent_db_app_public.session_archives 
  DROP COLUMN session_id RESTRICT;


