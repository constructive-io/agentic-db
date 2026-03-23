-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/name/column


ALTER TABLE "agentic_db_app_public".runtime_states 
  DROP COLUMN name RESTRICT;


