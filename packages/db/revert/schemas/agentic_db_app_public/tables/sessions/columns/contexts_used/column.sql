-- Revert: schemas/agentic_db_app_public/tables/sessions/columns/contexts_used/column


ALTER TABLE "agentic_db_app_public".sessions 
  DROP COLUMN contexts_used RESTRICT;


