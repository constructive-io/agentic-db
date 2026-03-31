-- Revert: schemas/agentic_db_app_public/tables/runtime_states_chunks/columns/content/alterations/alt0000001443


ALTER TABLE "agentic_db_app_public".runtime_states_chunks 
  ALTER COLUMN content DROP NOT NULL;


