-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/session_summary/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN session_summary RESTRICT;


