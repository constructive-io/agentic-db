-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/started_at/column


ALTER TABLE "agentic_db_app_public".runtime_states 
  DROP COLUMN started_at RESTRICT;


