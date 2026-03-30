-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/embedding/column


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  DROP COLUMN embedding RESTRICT;


