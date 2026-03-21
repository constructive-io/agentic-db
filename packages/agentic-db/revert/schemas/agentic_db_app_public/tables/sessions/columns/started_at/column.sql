-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/started_at/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN started_at RESTRICT;


