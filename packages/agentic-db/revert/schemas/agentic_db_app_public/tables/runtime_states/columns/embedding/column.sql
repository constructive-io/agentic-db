-- Revert: schemas/agentic_db_app_public/tables/runtime_states/columns/embedding/column


ALTER TABLE "agentic_db_app_public".runtime_states 
  DROP COLUMN embedding RESTRICT;


