-- Revert: schemas/agent_db_app_public/tables/session_archives/columns/summary/column


ALTER TABLE agent_db_app_public.session_archives 
  DROP COLUMN summary RESTRICT;


