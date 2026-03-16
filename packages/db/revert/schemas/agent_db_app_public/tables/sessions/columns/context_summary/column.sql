-- Revert: schemas/agent_db_app_public/tables/sessions/columns/context_summary/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN context_summary RESTRICT;


