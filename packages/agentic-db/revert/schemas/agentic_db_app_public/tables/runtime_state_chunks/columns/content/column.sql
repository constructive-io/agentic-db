-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/content/column


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  DROP COLUMN content RESTRICT;


