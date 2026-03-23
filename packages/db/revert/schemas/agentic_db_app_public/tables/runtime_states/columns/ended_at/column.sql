-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/ended_at/column


ALTER TABLE "agentic_db_app_public".runtime_states 
  DROP COLUMN ended_at RESTRICT;


