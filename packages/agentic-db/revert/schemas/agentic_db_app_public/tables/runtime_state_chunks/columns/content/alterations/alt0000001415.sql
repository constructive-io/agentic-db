-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/content/alterations/alt0000001415


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN content DROP NOT NULL;


