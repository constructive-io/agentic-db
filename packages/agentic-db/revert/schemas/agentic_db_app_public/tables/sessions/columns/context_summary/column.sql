-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/context_summary/column


ALTER TABLE agentic_db_app_public.sessions 
  DROP COLUMN context_summary RESTRICT;


