-- Revert: schemas/agentic_db_app_public/tables/runtime_state_chunks/columns/id/alterations/alt0000002296


ALTER TABLE "agentic_db_app_public".runtime_state_chunks 
  ALTER COLUMN id DROP NOT NULL;


