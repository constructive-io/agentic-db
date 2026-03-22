-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/updated_at/alterations/alt0000002303


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


