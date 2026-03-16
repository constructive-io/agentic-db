-- Revert: schemas/agent_db_app_public/tables/sessions/columns/session_summary/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN session_summary RESTRICT;


